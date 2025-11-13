.class public final Lcom/android/wm/shell/common/split/DividerPanelView$3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/airbnb/lottie/value/SimpleLottieValueCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/common/split/DividerPanelView;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/common/split/DividerPanelView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/common/split/DividerPanelView$3;->this$0:Lcom/android/wm/shell/common/split/DividerPanelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getValue()Ljava/lang/Object;
    .locals 2

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    iget-object p0, p0, Lcom/android/wm/shell/common/split/DividerPanelView$3;->this$0:Lcom/android/wm/shell/common/split/DividerPanelView;

    iget-object p0, p0, Lcom/android/wm/shell/common/split/DividerPanelView;->mColorTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, p0, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    return-object v0
.end method
