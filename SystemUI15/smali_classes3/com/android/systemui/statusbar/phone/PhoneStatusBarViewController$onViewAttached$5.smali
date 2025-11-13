.class public final Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$onViewAttached$5;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/SidelingCutoutContainerInfo;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$onViewAttached$5;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getRightSideAvailableWidth(Landroid/graphics/Rect;)I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$onViewAttached$5;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->access$getCutoutRightSideAvailableWidth(Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;Landroid/graphics/Rect;)I

    move-result p0

    return p0
.end method
