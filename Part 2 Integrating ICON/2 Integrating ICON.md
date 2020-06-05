## Part 2 or 4: Integrating ICON

# App Delegate

In part 1, we setup our project in Xcode and installed the ICON SDK. We can integrate the SDK into our Swift project using the command `import ICONKit`. We will describe how to use the ICON SDK in this readme, however, since this portion utilizes code, we uploaded our code for this portion.

We will first focus on the AppDelegate, which is the root of the project. It sets shared behaviors and initial actions upon loading. We will add ‘import ICONKit’ to utilize ICONKit. Next, we will add functionality to the application function (we use the argument with the ‘didFinishLaunchingWithOptions’).

In our app delegate code, we determine if there is a keystore file, named “iconkeystore.” If this exists, then we create a shared object called IconServices.shared (which I’ll describe later). If not, then we create a keystore with the password “iconpassword.” You’ll notice print lines for each of the flow outcomes. Since this tutorial is focused on setup of the environment, we provided these in the code to ensure you can see the execution and learn which path is being taken. In addition, clearly the filename and password should be customized for real-world use.

# Icon Services

Now, let us take a look at the IconServices class. This is contained in a separate Swift file, appropriately named IconServices.swift. This class connects to the wallet (via the keystore / password combination), checks the balance of the wallet, and then checks the address. We demonstrate connectivity to the ICON blockchain, through a wallet, with this basic functionality. We will then use these values to show the user the status of their wallet. Notice that you can connect to either the TestNet or the MainNet, based on the value provided to the ICONService object. 

# Wallet Functionality 

Now that we have the basic functionality to connect to the ICON network, we will show visualization of the wallet address and balance. We setup a simple UIViewController to show this information. We will not go through this setup, as it is common to almost all Swift applications and there are countless tutorials on different setups. Once we have our chosen GUI setup, we can easily access the address and balance for the wallet through our IconServices class via:

 `IconServices.shared.myAddress`
`IconServices.shared.myBalance`

We design a very simple interface, showing these details:

![](https://github.com/thelionshire/ICON-Swift-Tutorial/blob/master/Part%202%20Integrating%20ICON/images/2-interface.png)

Now, let us ensure we have properly connected to the ICON network, and can dynamically update our information, based on changes. We send 1 ICX to this wallet address. You can check the address in the tracker:

![](https://github.com/thelionshire/ICON-Swift-Tutorial/blob/master/Part%202%20Integrating%20ICON/images/2-trackerwallet.png)

Now we reload our Swift App and see that the balance had updated. We have made the GUI a bit more aesthetically pleasing, however, the purpose of this is just to setup the integration of the ICON SDK and baseline functionality into a Swift App.

![](https://github.com/thelionshire/ICON-Swift-Tutorial/blob/master/Part%202%20Integrating%20ICON/images/2-walletwithbalance.png)

That’s it! You have successfully created and integrated the ICON wallet into your swift project!
