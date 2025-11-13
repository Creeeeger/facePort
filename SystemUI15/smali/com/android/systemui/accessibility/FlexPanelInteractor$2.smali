.class public final Lcom/android/systemui/accessibility/FlexPanelInteractor$2;
.super Landroid/database/ContentObserver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/accessibility/FlexPanelInteractor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/accessibility/FlexPanelInteractor;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/accessibility/FlexPanelInteractor$2;->this$0:Lcom/android/systemui/accessibility/FlexPanelInteractor;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/accessibility/FlexPanelInteractor$2;->this$0:Lcom/android/systemui/accessibility/FlexPanelInteractor;

    iget-object p1, p0, Lcom/android/systemui/accessibility/FlexPanelInteractor;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "navigation_mode"

    const/4 v1, 0x0

    const/4 v2, -0x2

    invoke-static {p1, v0, v1, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    const/4 v0, 0x2

    if-gt v0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lcom/android/systemui/accessibility/FlexPanelInteractor;->mNavBarGestureEnabled:Z

    return-void
.end method
