const RootRoute = "/";

const HomePageDisplayName = "Home";
const HomePageRoute = "/home";

const SignatureDisplayName = "Signature";
const SignaturePageRoute = "/signature";

const AboutUsDisplayName = "AboutUs";
const AboutUsPageRoute = "/aboutus";

const UpdatesDisplayName = "Updates";
const UpdatesPageRoute = "/updates";

class MenuItem {
  final String name;
  final String route;

  MenuItem(this.name, this.route);
}

List<MenuItem> sideMenuItems = [
  MenuItem(HomePageDisplayName, HomePageRoute),
  MenuItem(SignatureDisplayName, SignaturePageRoute),
];
