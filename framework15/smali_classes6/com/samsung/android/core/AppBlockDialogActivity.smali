.class public Lcom/samsung/android/core/AppBlockDialogActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "AppBlockDialogActivity.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# static fields
.field public static final blacklist TAG:Ljava/lang/String; = "AppJumpBlockTool"


# instance fields
.field private blacklist alwaysAllowPackageNameList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist blockedAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/core/AppJumpBlockTool$AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist isClickAllow:Z

.field private blacklist mCallingPid:I

.field private blacklist mCallingUid:I

.field private blacklist mUserId:I

.field private blacklist options:Landroid/os/Bundle;

.field private blacklist requestCode:I

.field private blacklist sourceAppInfo:Lcom/samsung/android/core/AppJumpBlockTool$AppInfo;

.field private blacklist targetIntents:[Landroid/content/Intent;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetalwaysAllowPackageNameList(Lcom/samsung/android/core/AppBlockDialogActivity;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/core/AppBlockDialogActivity;->alwaysAllowPackageNameList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetblockedAppList(Lcom/samsung/android/core/AppBlockDialogActivity;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/core/AppBlockDialogActivity;->blockedAppList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetisClickAllow(Lcom/samsung/android/core/AppBlockDialogActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/core/AppBlockDialogActivity;->isClickAllow:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCallingUid(Lcom/samsung/android/core/AppBlockDialogActivity;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/core/AppBlockDialogActivity;->mCallingUid:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUserId(Lcom/samsung/android/core/AppBlockDialogActivity;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/core/AppBlockDialogActivity;->mUserId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetoptions(Lcom/samsung/android/core/AppBlockDialogActivity;)Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/core/AppBlockDialogActivity;->options:Landroid/os/Bundle;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetrequestCode(Lcom/samsung/android/core/AppBlockDialogActivity;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/core/AppBlockDialogActivity;->requestCode:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetsourceAppInfo(Lcom/samsung/android/core/AppBlockDialogActivity;)Lcom/samsung/android/core/AppJumpBlockTool$AppInfo;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/core/AppBlockDialogActivity;->sourceAppInfo:Lcom/samsung/android/core/AppJumpBlockTool$AppInfo;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgettargetIntents(Lcom/samsung/android/core/AppBlockDialogActivity;)[Landroid/content/Intent;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/core/AppBlockDialogActivity;->targetIntents:[Landroid/content/Intent;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputisClickAllow(Lcom/samsung/android/core/AppBlockDialogActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/core/AppBlockDialogActivity;->isClickAllow:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msendAllowResult(Lcom/samsung/android/core/AppBlockDialogActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/core/AppBlockDialogActivity;->sendAllowResult()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msendResult(Lcom/samsung/android/core/AppBlockDialogActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/core/AppBlockDialogActivity;->sendResult(Ljava/lang/String;)V

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/core/AppBlockDialogActivity;->alwaysAllowPackageNameList:Ljava/util/List;

    return-void
.end method

.method private blacklist delayFinish()V
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/core/AppBlockDialogActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/core/AppBlockDialogActivity$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/core/AppBlockDialogActivity$3;-><init>(Lcom/samsung/android/core/AppBlockDialogActivity;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private final blacklist sendAllowResult()V
    .locals 1

    const-string v0, "Allow"

    invoke-direct {p0, v0}, Lcom/samsung/android/core/AppBlockDialogActivity;->sendResult(Ljava/lang/String;)V

    return-void
.end method

.method private final blacklist sendCancelResult()V
    .locals 1

    const-string v0, "Cancel"

    invoke-direct {p0, v0}, Lcom/samsung/android/core/AppBlockDialogActivity;->sendResult(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist sendResult(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.intent.action.APP_JUMP_BLOCK_DIALOG_RESULT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "reason"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/core/AppBlockDialogActivity;->sourceAppInfo:Lcom/samsung/android/core/AppJumpBlockTool$AppInfo;

    iget-object v1, v1, Lcom/samsung/android/core/AppJumpBlockTool$AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/core/AppBlockDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "send Broadcast,reason:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AppJumpBlockTool"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p0, Lcom/samsung/android/core/AppBlockDialogActivity;->mCallingUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/core/AppBlockDialogActivity;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private final blacklist showBlockDialog()V
    .locals 8

    new-instance v0, Landroid/widget/CheckBox;

    invoke-direct {v0, p0}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    const v1, 0x10401bb

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setText(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/core/AppBlockDialogActivity;->blockedAppList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/core/AppBlockDialogActivity;->blockedAppList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/core/AppJumpBlockTool$AppInfo;

    iget-object v5, v3, Lcom/samsung/android/core/AppJumpBlockTool$AppInfo;->appName:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/core/AppBlockDialogActivity;->blockedAppList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v4

    if-ge v2, v5, :cond_0

    const-string v4, "\u3001"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/core/AppBlockDialogActivity;->sourceAppInfo:Lcom/samsung/android/core/AppJumpBlockTool$AppInfo;

    iget-object v2, v2, Lcom/samsung/android/core/AppJumpBlockTool$AppInfo;->appName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    const v3, 0x10401ca

    invoke-virtual {p0, v3, v2}, Lcom/samsung/android/core/AppBlockDialogActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v5, Lcom/samsung/android/core/AppBlockDialogActivity$2;

    invoke-direct {v5, p0, v0}, Lcom/samsung/android/core/AppBlockDialogActivity$2;-><init>(Lcom/samsung/android/core/AppBlockDialogActivity;Landroid/widget/CheckBox;)V

    const v6, 0x10401c9

    invoke-virtual {v3, v6, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v5, Lcom/samsung/android/core/AppBlockDialogActivity$1;

    invoke-direct {v5, p0}, Lcom/samsung/android/core/AppBlockDialogActivity$1;-><init>(Lcom/samsung/android/core/AppBlockDialogActivity;)V

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/high16 v5, 0x1040000

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const v6, 0x102000b

    invoke-virtual {v5, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setTextColor(I)V

    invoke-virtual {p0}, Lcom/samsung/android/core/AppBlockDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    const/high16 v7, 0x41880000    # 17.0f

    invoke-static {v4, v7, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v0}, Landroid/widget/CheckBox;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v7, 0x0

    invoke-virtual {v6, v4, v7, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method

.method public whitelist onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string v0, "AppJumpBlockTool"

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/core/AppBlockDialogActivity;->finish()V

    return-void
.end method

.method public whitelist onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-virtual {p0}, Lcom/samsung/android/core/AppBlockDialogActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "AdInterceptDialogActivity:onCreate"

    const-string v1, "AppJumpBlockTool"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/core/AppBlockDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const-string v3, "data can\'t be null"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/samsung/android/core/AppBlockDialogActivity;->isClickAllow:Z

    invoke-direct {p0}, Lcom/samsung/android/core/AppBlockDialogActivity;->sendAllowResult()V

    invoke-virtual {p0}, Lcom/samsung/android/core/AppBlockDialogActivity;->finish()V

    return-void

    :cond_0
    const-string v3, "userId"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/core/AppBlockDialogActivity;->mUserId:I

    const-string v3, "callingPid"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/core/AppBlockDialogActivity;->mCallingPid:I

    const-string v3, "callingUid"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/core/AppBlockDialogActivity;->mCallingUid:I

    const-string v3, "targetIntents"

    const-class v4, Landroid/content/Intent;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/content/Intent;

    iput-object v3, p0, Lcom/samsung/android/core/AppBlockDialogActivity;->targetIntents:[Landroid/content/Intent;

    const-string v3, "requestCode"

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/core/AppBlockDialogActivity;->requestCode:I

    const-string v3, "options"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    iput-object v3, p0, Lcom/samsung/android/core/AppBlockDialogActivity;->options:Landroid/os/Bundle;

    const-string v3, "sourceAppInfo"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/core/AppJumpBlockTool$AppInfo;

    iput-object v3, p0, Lcom/samsung/android/core/AppBlockDialogActivity;->sourceAppInfo:Lcom/samsung/android/core/AppJumpBlockTool$AppInfo;

    const-string v3, "blockedAppList"

    const-class v4, Lcom/samsung/android/core/AppJumpBlockTool$AppInfo;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/samsung/android/core/AppJumpBlockTool$AppInfo;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/core/AppBlockDialogActivity;->blockedAppList:Ljava/util/List;

    iget-object v3, p0, Lcom/samsung/android/core/AppBlockDialogActivity;->blockedAppList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "blockedAppList:isEmpty"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/samsung/android/core/AppBlockDialogActivity;->isClickAllow:Z

    invoke-direct {p0}, Lcom/samsung/android/core/AppBlockDialogActivity;->sendAllowResult()V

    invoke-virtual {p0}, Lcom/samsung/android/core/AppBlockDialogActivity;->finish()V

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/core/AppBlockDialogActivity;->showBlockDialog()V

    return-void
.end method

.method public whitelist onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onPause()V

    const-string v0, "AppBlockDialogActivity=>onPause"

    const-string v1, "AppJumpBlockTool"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/core/AppBlockDialogActivity;->isClickAllow:Z

    if-nez v0, :cond_0

    const-string v0, "onDismiss"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/core/AppBlockDialogActivity;->sendCancelResult()V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/core/AppBlockDialogActivity;->finish()V

    return-void
.end method
