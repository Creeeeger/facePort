.class public final Lcom/android/systemui/accessibility/WindowMagnificationSettings$5;
.super Landroid/database/ContentObserver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/accessibility/WindowMagnificationSettings;


# direct methods
.method public constructor <init>(Lcom/android/systemui/accessibility/WindowMagnificationSettings;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings$5;->this$0:Lcom/android/systemui/accessibility/WindowMagnificationSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 3

    iget-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings$5;->this$0:Lcom/android/systemui/accessibility/WindowMagnificationSettings;

    iget-object p1, p1, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings$5;->this$0:Lcom/android/systemui/accessibility/WindowMagnificationSettings;

    iget-object v0, v0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00a3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    const/4 v1, -0x2

    const-string v2, "accessibility_display_magnification_scale"

    invoke-static {p1, v2, v0, v1}, Landroid/provider/Settings$Secure;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result p1

    iget-object p0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings$5;->this$0:Lcom/android/systemui/accessibility/WindowMagnificationSettings;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr p1, v0

    div-float/2addr p1, v0

    float-to-int p1, p1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mZoomSeekbar:Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView;->setProgress(I)V

    return-void
.end method
