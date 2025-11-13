.class public Landroid/app/Presentation;
.super Landroid/app/Dialog;
.source "Presentation.java"


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "Presentation"


# instance fields
.field private blacklist isRearDisplayPresentation:Z

.field private final greylist-max-o mDisplay:Landroid/view/Display;

.field private final greylist-max-o mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private final greylist-max-o mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private final greylist-max-o mHandler:Landroid/os/Handler;

.field private blacklist mIsStarted:Z

.field private final blacklist mOwnerPackageName:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDisplay(Landroid/app/Presentation;)Landroid/view/Display;
    .locals 0

    iget-object p0, p0, Landroid/app/Presentation;->mDisplay:Landroid/view/Display;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleDisplayChanged(Landroid/app/Presentation;)V
    .locals 0

    invoke-direct {p0}, Landroid/app/Presentation;->handleDisplayChanged()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleDisplayRemoved(Landroid/app/Presentation;)V
    .locals 0

    invoke-direct {p0}, Landroid/app/Presentation;->handleDisplayRemoved()V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/view/Display;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/app/Presentation;-><init>(Landroid/content/Context;Landroid/view/Display;I)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/view/Display;I)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/app/Presentation;-><init>(Landroid/content/Context;Landroid/view/Display;II)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/view/Display;II)V
    .locals 5

    invoke-static {p1, p2, p3, p4}, Landroid/app/Presentation;->createPresentationContext(Landroid/content/Context;Landroid/view/Display;II)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p3, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;IZ)V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    const-string v3, "Presentation must be constructed on a looper thread."

    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Looper;

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/app/Presentation;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/app/Presentation$1;

    invoke-direct {v0, p0}, Landroid/app/Presentation$1;-><init>(Landroid/app/Presentation;)V

    iput-object v0, p0, Landroid/app/Presentation;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    iput-object p2, p0, Landroid/app/Presentation;->mDisplay:Landroid/view/Display;

    invoke-virtual {p0}, Landroid/app/Presentation;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Landroid/app/Presentation;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Presentation;->mOwnerPackageName:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/view/Display;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/16 v0, 0x7ee

    goto :goto_0

    :cond_0
    const/16 v0, 0x7f5

    :goto_0
    nop

    invoke-virtual {p0}, Landroid/app/Presentation;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/16 v4, 0x77

    invoke-virtual {v2, v4}, Landroid/view/Window;->setGravity(I)V

    invoke-static {p4, p2}, Landroid/app/Presentation;->getWindowType(ILandroid/view/Display;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/Window;->setType(I)V

    invoke-virtual {p0, v1}, Landroid/app/Presentation;->setCanceledOnTouchOutside(Z)V

    return-void
.end method

.method private static greylist-max-r createPresentationContext(Landroid/content/Context;Landroid/view/Display;I)Landroid/content/Context;
    .locals 1

    const/4 v0, -0x1

    invoke-static {p0, p1, p2, v0}, Landroid/app/Presentation;->createPresentationContext(Landroid/content/Context;Landroid/view/Display;II)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist createPresentationContext(Landroid/content/Context;Landroid/view/Display;II)Landroid/content/Context;
    .locals 5

    if-eqz p0, :cond_2

    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v0

    invoke-static {p3, p1}, Landroid/app/Presentation;->getWindowType(ILandroid/view/Display;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->createWindowContext(ILandroid/os/Bundle;)Landroid/content/Context;

    move-result-object v0

    if-nez p2, :cond_0

    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x10103c0

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget p2, v1, Landroid/util/TypedValue;->resourceId:I

    :cond_0
    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-direct {v1, v0, p2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    return-object v1

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "display must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "outerContext must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist getWindowType(ILandroid/view/Display;)I
    .locals 1

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    return p0

    :cond_0
    invoke-virtual {p1}, Landroid/view/Display;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    const/16 v0, 0x7ee

    goto :goto_0

    :cond_1
    const/16 v0, 0x7f5

    :goto_0
    return v0
.end method

.method private greylist-max-o handleDisplayChanged()V
    .locals 5

    invoke-virtual {p0}, Landroid/app/Presentation;->onDisplayChanged()V

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_FLEXIBLE_DUAL_MODE:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/app/Presentation;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    iget-object v2, p0, Landroid/app/Presentation;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2, v0}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleDisplayChanged() FLAG_REAR : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/view/DisplayInfo;->flags:I

    and-int/lit16 v4, v4, 0x2000

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isRearDisplayPresentation="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Landroid/app/Presentation;->isRearDisplayPresentation:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isValid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Presentation="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Presentation"

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v3, p0, Landroid/app/Presentation;->isRearDisplayPresentation:Z

    if-eqz v3, :cond_0

    if-eqz v2, :cond_1

    iget v1, v0, Landroid/view/DisplayInfo;->flags:I

    and-int/lit16 v1, v1, 0x2000

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/app/Presentation;->cancel()V

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    iget v3, v0, Landroid/view/DisplayInfo;->flags:I

    and-int/lit16 v3, v3, 0x2000

    if-eqz v3, :cond_1

    iput-boolean v1, p0, Landroid/app/Presentation;->isRearDisplayPresentation:Z

    :cond_1
    :goto_0
    return-void
.end method

.method private greylist-max-o handleDisplayRemoved()V
    .locals 0

    invoke-virtual {p0}, Landroid/app/Presentation;->onDisplayRemoved()V

    invoke-virtual {p0}, Landroid/app/Presentation;->cancel()V

    return-void
.end method

.method private blacklist sendPresentationIntent(Z)V
    .locals 5

    const-string/jumbo v0, "ownerPackageName"

    const-string v1, "displayID"

    const-string v2, "displayName"

    if-eqz p1, :cond_0

    iget-boolean v3, p0, Landroid/app/Presentation;->mIsStarted:Z

    if-nez v3, :cond_0

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.samsung.intent.action.SEC_PRESENTATION_START"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Landroid/app/Presentation;->mDisplay:Landroid/view/Display;

    invoke-virtual {v4}, Landroid/view/Display;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-virtual {v3, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Landroid/app/Presentation;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Landroid/app/Presentation;->mOwnerPackageName:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Landroid/app/Presentation;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Presentation;->mIsStarted:Z

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    iget-boolean v3, p0, Landroid/app/Presentation;->mIsStarted:Z

    if-eqz v3, :cond_1

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.samsung.intent.action.SEC_PRESENTATION_STOP"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Landroid/app/Presentation;->mDisplay:Landroid/view/Display;

    invoke-virtual {v4}, Landroid/view/Display;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-virtual {v3, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Landroid/app/Presentation;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Landroid/app/Presentation;->mOwnerPackageName:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Landroid/app/Presentation;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/Presentation;->mIsStarted:Z

    goto :goto_1

    :cond_1
    :goto_0
    nop

    :goto_1
    return-void
.end method


# virtual methods
.method public whitelist getDisplay()Landroid/view/Display;
    .locals 1

    iget-object v0, p0, Landroid/app/Presentation;->mDisplay:Landroid/view/Display;

    return-object v0
.end method

.method public whitelist getResources()Landroid/content/res/Resources;
    .locals 1

    invoke-virtual {p0}, Landroid/app/Presentation;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public whitelist hide()V
    .locals 1

    invoke-super {p0}, Landroid/app/Dialog;->hide()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/app/Presentation;->sendPresentationIntent(Z)V

    return-void
.end method

.method public whitelist onDisplayChanged()V
    .locals 0

    return-void
.end method

.method public whitelist onDisplayRemoved()V
    .locals 0

    return-void
.end method

.method protected whitelist onStart()V
    .locals 5

    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    iget-object v0, p0, Landroid/app/Presentation;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Landroid/app/Presentation;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    iget-object v2, p0, Landroid/app/Presentation;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_FLEXIBLE_DUAL_MODE:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/Presentation;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    if-ne v0, v1, :cond_0

    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    iget-object v2, p0, Landroid/app/Presentation;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2, v0}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onStart() FLAG_REAR : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/view/DisplayInfo;->flags:I

    and-int/lit16 v4, v4, 0x2000

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isValid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Presentation="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Presentation"

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_0

    iget v3, v0, Landroid/view/DisplayInfo;->flags:I

    and-int/lit16 v3, v3, 0x2000

    if-eqz v3, :cond_0

    iput-boolean v1, p0, Landroid/app/Presentation;->isRearDisplayPresentation:Z

    :cond_0
    invoke-direct {p0, v1}, Landroid/app/Presentation;->sendPresentationIntent(Z)V

    return-void
.end method

.method protected whitelist onStop()V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/app/Presentation;->sendPresentationIntent(Z)V

    iget-object v0, p0, Landroid/app/Presentation;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Landroid/app/Presentation;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    return-void
.end method

.method public whitelist show()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/app/Presentation;->sendPresentationIntent(Z)V

    invoke-super {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method
