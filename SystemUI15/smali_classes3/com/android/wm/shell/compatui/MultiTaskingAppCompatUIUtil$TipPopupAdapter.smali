.class public final enum Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIUtil$TipPopupAdapter;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIUtil$TipPopupAdapter;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIUtil$TipPopupAdapter;

.field public static final enum INSTANCE:Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIUtil$TipPopupAdapter;

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

.field private mMessage:Ljava/lang/CharSequence;

.field private mMultiTaskingAppCompatUILayout:Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;

.field private mSemTipPopup:Lcom/samsung/android/widget/SemTipPopup;

.field private mViewHost:Landroid/view/View;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmViewHost(Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIUtil$TipPopupAdapter;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIUtil$TipPopupAdapter;->mViewHost:Landroid/view/View;

    return-object p0
.end method

.method public static -$$Nest$mbuild(Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIUtil$TipPopupAdapter;Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIUtil$TipPopupBuilder;)Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIUtil$TipPopupAdapter;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIUtil$TipPopupAdapter;->TAG:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIUtil$TipPopupBuilder;->mMultiTaskingAppCompatUILayout:Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;

    if-nez v1, :cond_0

    const-string p0, "build: no layout, something went wrong."

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIUtil$TipPopupAdapter;->mWindowManager:Landroid/view/WindowManager;

    if-nez v2, :cond_1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    iput-object v2, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIUtil$TipPopupAdapter;->mWindowManager:Landroid/view/WindowManager;

    :cond_1
    iget-object v2, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIUtil$TipPopupAdapter;->mMultiTaskingAppCompatUILayout:Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iput-object v1, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIUtil$TipPopupAdapter;->mMultiTaskingAppCompatUILayout:Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;

    :cond_2
    iget-object p1, p1, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIUtil$TipPopupBuilder;->mMessage:Ljava/lang/CharSequence;

    iput-object p1, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIUtil$TipPopupAdapter;->mMessage:Ljava/lang/CharSequence;

    iget-object p1, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIUtil$TipPopupAdapter;->mViewHost:Landroid/view/View;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "build: removed remained host, "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIUtil$TipPopupAdapter;->mViewHost:Landroid/view/View;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIUtil$TipPopupAdapter;->mWindowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIUtil$TipPopupAdapter;->mViewHost:Landroid/view/View;

    invoke-interface {p1, v0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    :cond_3
    iget-object p1, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIUtil$TipPopupAdapter;->mMultiTaskingAppCompatUILayout:Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0d0228

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIUtil$TipPopupAdapter;->mViewHost:Landroid/view/View;

    iget-object p0, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIUtil$TipPopupAdapter;->mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {p1, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :goto_0
    sget-object p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIUtil$TipPopupAdapter;->INSTANCE:Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIUtil$TipPopupAdapter;

    return-object p0
.end method

.method public static -$$Nest$mshowTipPopup(Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIUtil$TipPopupAdapter;)V
    .locals 6

    iget-object v0, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIUtil$TipPopupAdapter;->mMultiTaskingAppCompatUILayout:Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;->mSwitchableButtonContainer:Landroid/widget/FrameLayout;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    :cond_1
    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v0, :cond_5

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance v2, Lcom/samsung/android/widget/SemTipPopup;

    iget-object v3, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIUtil$TipPopupAdapter;->mViewHost:Landroid/view/View;

    invoke-direct {v2, v3}, Lcom/samsung/android/widget/SemTipPopup;-><init>(Landroid/view/View;)V

    iput-object v2, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIUtil$TipPopupAdapter;->mSemTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    iget-object v3, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIUtil$TipPopupAdapter;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Lcom/samsung/android/widget/SemTipPopup;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIUtil$TipPopupAdapter;->mSemTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/widget/SemTipPopup;->setExpanded(Z)V

    iget-object v2, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIUtil$TipPopupAdapter;->mSemTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    invoke-virtual {v2, v3}, Lcom/samsung/android/widget/SemTipPopup;->setOutsideTouchEnabled(Z)V

    iget-object v2, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIUtil$TipPopupAdapter;->mSemTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    new-instance v4, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIUtil$TipPopupAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIUtil$TipPopupAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIUtil$TipPopupAdapter;)V

    invoke-virtual {v2, v4}, Lcom/samsung/android/widget/SemTipPopup;->setOnStateChangeListener(Lcom/samsung/android/widget/SemTipPopup$OnStateChangeListener;)V

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLocationOnScreen()[I

    move-result-object v0

    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/16 v4, 0x35

    const/4 v5, 0x0

    if-eq v2, v4, :cond_4

    const/16 v4, 0x53

    if-eq v2, v4, :cond_3

    iget-object v2, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIUtil$TipPopupAdapter;->mSemTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    aget v4, v0, v5

    aget v0, v0, v3

    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    shr-int/2addr v1, v3

    sub-int/2addr v0, v1

    invoke-virtual {v2, v4, v0}, Lcom/samsung/android/widget/SemTipPopup;->setTargetPosition(II)V

    iget-object p0, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIUtil$TipPopupAdapter;->mSemTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    invoke-virtual {p0, v5}, Lcom/samsung/android/widget/SemTipPopup;->show(I)V

    goto :goto_2

    :cond_3
    iget-object v2, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIUtil$TipPopupAdapter;->mSemTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    aget v4, v0, v5

    iget v5, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    add-int/2addr v4, v5

    aget v0, v0, v3

    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    shr-int/2addr v1, v3

    sub-int/2addr v0, v1

    invoke-virtual {v2, v4, v0}, Lcom/samsung/android/widget/SemTipPopup;->setTargetPosition(II)V

    iget-object p0, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIUtil$TipPopupAdapter;->mSemTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    invoke-virtual {p0, v3}, Lcom/samsung/android/widget/SemTipPopup;->show(I)V

    goto :goto_2

    :cond_4
    iget-object v2, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIUtil$TipPopupAdapter;->mSemTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    aget v4, v0, v5

    aget v0, v0, v3

    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    shr-int/2addr v1, v3

    add-int/2addr v0, v1

    invoke-virtual {v2, v4, v0}, Lcom/samsung/android/widget/SemTipPopup;->setTargetPosition(II)V

    iget-object p0, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIUtil$TipPopupAdapter;->mSemTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/samsung/android/widget/SemTipPopup;->show(I)V

    goto :goto_2

    :cond_5
    :goto_1
    sget-object v0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIUtil$TipPopupAdapter;->TAG:Ljava/lang/String;

    const-string v1, "No target button with layoutParams to show guide tip."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIUtil$TipPopupAdapter;->dismissTipPopup()V

    :goto_2
    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIUtil$TipPopupAdapter;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIUtil$TipPopupAdapter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIUtil$TipPopupAdapter;->INSTANCE:Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIUtil$TipPopupAdapter;

    filled-new-array {v0}, [Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIUtil$TipPopupAdapter;

    move-result-object v0

    sput-object v0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIUtil$TipPopupAdapter;->$VALUES:[Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIUtil$TipPopupAdapter;

    const-class v0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIUtil$TipPopupAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIUtil$TipPopupAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance p1, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIUtil$TipPopupAdapter$1;

    invoke-direct {p1, p0}, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIUtil$TipPopupAdapter$1;-><init>(Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIUtil$TipPopupAdapter;)V

    iput-object p1, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIUtil$TipPopupAdapter;->mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIUtil$TipPopupAdapter;
    .locals 1

    const-class v0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIUtil$TipPopupAdapter;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIUtil$TipPopupAdapter;

    return-object p0
.end method

.method public static values()[Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIUtil$TipPopupAdapter;
    .locals 1

    sget-object v0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIUtil$TipPopupAdapter;->$VALUES:[Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIUtil$TipPopupAdapter;

    invoke-virtual {v0}, [Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIUtil$TipPopupAdapter;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIUtil$TipPopupAdapter;

    return-object v0
.end method


# virtual methods
.method public final dismissTipPopup()V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIUtil$TipPopupAdapter;->mViewHost:Landroid/view/View;

    sget-object v1, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIUtil$TipPopupAdapter;->TAG:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "dismissTipPopup: mViewHost="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIUtil$TipPopupAdapter;->mViewHost:Landroid/view/View;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", callers="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x6

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIUtil$TipPopupAdapter;->mSemTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemTipPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "dismissTipPopup: dismiss TipPopup"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIUtil$TipPopupAdapter;->mSemTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    invoke-virtual {v0, v2}, Lcom/samsung/android/widget/SemTipPopup;->setOnStateChangeListener(Lcom/samsung/android/widget/SemTipPopup$OnStateChangeListener;)V

    iget-object v0, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIUtil$TipPopupAdapter;->mSemTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemTipPopup;->dismiss(Z)V

    iput-object v2, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIUtil$TipPopupAdapter;->mSemTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIUtil$TipPopupAdapter;->mViewHost:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIUtil$TipPopupAdapter;->mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object v0, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIUtil$TipPopupAdapter;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIUtil$TipPopupAdapter;->mViewHost:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    iput-object v2, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIUtil$TipPopupAdapter;->mViewHost:Landroid/view/View;

    :cond_2
    return-void
.end method

.method public final release()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIUtil$TipPopupAdapter;->dismissTipPopup()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIUtil$TipPopupAdapter;->mWindowManager:Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIUtil$TipPopupAdapter;->mMultiTaskingAppCompatUILayout:Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;

    iput-object v0, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIUtil$TipPopupAdapter;->mMessage:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIUtil$TipPopupAdapter;->mViewHost:Landroid/view/View;

    iput-object v0, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIUtil$TipPopupAdapter;->mSemTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    return-void
.end method

.method public final show()V
    .locals 9

    iget-object v0, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIUtil$TipPopupAdapter;->mViewHost:Landroid/view/View;

    sget-object v1, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIUtil$TipPopupAdapter;->TAG:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string/jumbo p0, "show: host is null, something went wrong."

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v2, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIUtil$TipPopupAdapter;->mMultiTaskingAppCompatUILayout:Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->getWindowDisplayFrame(Landroid/graphics/Rect;)V

    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    const/4 v8, -0x3

    const/16 v6, 0x7f6

    const/16 v7, 0x28

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    const-class v0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIUtil$TipPopupAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget v0, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const v3, 0x20000040

    or-int/2addr v0, v3

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/16 v0, 0x10

    invoke-virtual {v2, v0}, Landroid/view/WindowManager$LayoutParams;->semAddPrivateFlags(I)V

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "show: mViewHost="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIUtil$TipPopupAdapter;->mViewHost:Landroid/view/View;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", layoutParams="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIUtil$TipPopupAdapter;->mWindowManager:Landroid/view/WindowManager;

    iget-object p0, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIUtil$TipPopupAdapter;->mViewHost:Landroid/view/View;

    invoke-interface {v0, p0, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
