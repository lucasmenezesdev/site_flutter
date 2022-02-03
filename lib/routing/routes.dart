const RootRoute = "/";

const HomePageDisplayName = "Home";
const HomePageRoute = "/home";

const SignatureDisplayName = "Signature";
const SignaturePageRoute = "/signature";

const AboutUsDisplayName = "AboutUs";
const AboutUsPageRoute = "/aboutus";

const UpdatesDisplayName = "Updates";
const UpdatesPageRoute = "/updates";

const CheckoutDisplayName = 'Checkout';
const CheckoutRoute = '/checkout';

class MenuItem {
  final String name;
  final String route;

  MenuItem(this.name, this.route);
}

List<MenuItem> sideMenuItems = [
  MenuItem(HomePageDisplayName, HomePageRoute),
  MenuItem(SignatureDisplayName, SignaturePageRoute),
  MenuItem(CheckoutDisplayName, CheckoutRoute),
];
