.class public final Landroid/view/autofill/AutofillClientController;
.super Ljava/lang/Object;
.source "AutofillClientController.java"

# interfaces
.implements Landroid/view/autofill/AutofillManager$AutofillClient;
.implements Landroid/util/Dumpable;


# static fields
.field public static final blacklist AUTOFILL_RESET_NEEDED:Ljava/lang/String; = "@android:autofillResetNeeded"

.field public static final blacklist AUTO_FILL_AUTH_WHO_PREFIX:Ljava/lang/String; = "@android:autoFillAuth:"

.field public static final blacklist DEBUG:Z

.field public static final blacklist DUMPABLE_NAME:Ljava/lang/String; = "AutofillManager"

.field public static final blacklist LAST_AUTOFILL_ID:Ljava/lang/String; = "android:lastAutofillId"

.field private static final blacklist LOG_TAG:Ljava/lang/String; = "autofill_client"

.field private static final blacklist TAG:Ljava/lang/String; = "AutofillClientController"


# instance fields
.field private final blacklist mActivity:Landroid/app/Activity;

.field private blacklist mAutoFillIgnoreFirstResumePause:Z

.field private blacklist mAutoFillResetNeeded:Z

.field private blacklist mAutofillManager:Landroid/view/autofill/AutofillManager;

.field private blacklist mAutofillPopupWindow:Landroid/view/autofill/AutofillPopupWindow;

.field public blacklist mLastAutofillId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    const-string v0, "autofill_client"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/view/autofill/AutofillClientController;->DEBUG:Z

    return-void
.end method

.method public constructor blacklist <init>(Landroid/app/Activity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x3fffffff    # 1.9999999f

    iput v0, p0, Landroid/view/autofill/AutofillClientController;->mLastAutofillId:I

    iput-object p1, p0, Landroid/view/autofill/AutofillClientController;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method private blacklist getAutofillManager()Landroid/view/autofill/AutofillManager;
    .locals 2

    iget-object v0, p0, Landroid/view/autofill/AutofillClientController;->mAutofillManager:Landroid/view/autofill/AutofillManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/view/autofill/AutofillClientController;->mActivity:Landroid/app/Activity;

    const-class v1, Landroid/view/autofill/AutofillManager;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManager;

    iput-object v0, p0, Landroid/view/autofill/AutofillClientController;->mAutofillManager:Landroid/view/autofill/AutofillManager;

    :cond_0
    iget-object v0, p0, Landroid/view/autofill/AutofillClientController;->mAutofillManager:Landroid/view/autofill/AutofillManager;

    return-object v0
.end method


# virtual methods
.method public blacklist autofillClientAuthenticate(ILandroid/content/IntentSender;Landroid/content/Intent;Z)V
    .locals 9

    :try_start_0
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActivityOptions;->setPendingIntentBackgroundActivityStartMode(I)Landroid/app/ActivityOptions;

    move-result-object v0

    iget-object v1, p0, Landroid/view/autofill/AutofillClientController;->mActivity:Landroid/app/Activity;

    const-string v3, "@android:autoFillAuth:"

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v8

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p2

    move v4, p1

    move-object v5, p3

    invoke-virtual/range {v1 .. v8}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;Ljava/lang/String;ILandroid/content/Intent;IILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "authenticate() failed for intent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AutofillClientController"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public blacklist autofillClientDispatchUnhandledKey(Landroid/view/View;Landroid/view/KeyEvent;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Landroid/view/ViewRootImpl;->dispatchKeyFromAutofill(Landroid/view/KeyEvent;)V

    :cond_0
    return-void
.end method

.method public blacklist autofillClientFindViewByAccessibilityIdTraversal(II)Landroid/view/View;
    .locals 4

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v0

    iget-object v1, p0, Landroid/view/autofill/AutofillClientController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/WindowManagerGlobal;->getRootViews(Landroid/os/IBinder;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewRootImpl;

    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getAccessibilityWindowId()I

    move-result v3

    if-ne v3, p2, :cond_0

    invoke-virtual {v2, p1}, Landroid/view/View;->findViewByAccessibilityIdTraversal(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public blacklist autofillClientFindViewByAutofillIdTraversal(Landroid/view/autofill/AutofillId;)Landroid/view/View;
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v1

    iget-object v2, p0, Landroid/view/autofill/AutofillClientController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/WindowManagerGlobal;->getRootViews(Landroid/os/IBinder;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/ViewRootImpl;

    invoke-virtual {v3}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Landroid/view/autofill/AutofillId;->getViewId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewByAutofillIdTraversal(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_1

    return-object v4

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public blacklist autofillClientFindViewsByAutofillIdTraversal([Landroid/view/autofill/AutofillId;)[Landroid/view/View;
    .locals 7

    array-length v0, p1

    new-array v0, v0, [Landroid/view/View;

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v1

    iget-object v2, p0, Landroid/view/autofill/AutofillClientController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/WindowManagerGlobal;->getRootViews(Landroid/os/IBinder;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/ViewRootImpl;

    invoke-virtual {v3}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    array-length v4, p1

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_1

    aget-object v6, p1, v5

    if-eqz v6, :cond_0

    aget-object v6, v0, v5

    if-nez v6, :cond_0

    aget-object v6, p1, v5

    invoke-virtual {v6}, Landroid/view/autofill/AutofillId;->getViewId()I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewByAutofillIdTraversal(I)Landroid/view/View;

    move-result-object v6

    aput-object v6, v0, v5

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public blacklist autofillClientGetActivityToken()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Landroid/view/autofill/AutofillClientController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public blacklist autofillClientGetComponentName()Landroid/content/ComponentName;
    .locals 1

    iget-object v0, p0, Landroid/view/autofill/AutofillClientController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public blacklist autofillClientGetNextAutofillId()Landroid/view/autofill/AutofillId;
    .locals 2

    new-instance v0, Landroid/view/autofill/AutofillId;

    invoke-virtual {p0}, Landroid/view/autofill/AutofillClientController;->getNextAutofillId()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/view/autofill/AutofillId;-><init>(I)V

    return-object v0
.end method

.method public blacklist autofillClientGetViewVisibility([Landroid/view/autofill/AutofillId;)[Z
    .locals 6

    array-length v0, p1

    new-array v1, v0, [Z

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    aget-object v3, p1, v2

    if-nez v3, :cond_0

    const/4 v4, 0x0

    aput-boolean v4, v1, v2

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v3}, Landroid/view/autofill/AutofillClientController;->autofillClientFindViewByAutofillIdTraversal(Landroid/view/autofill/AutofillId;)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Landroid/view/autofill/AutofillId;->isVirtualInt()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v4}, Landroid/view/View;->isVisibleToUser()Z

    move-result v5

    aput-boolean v5, v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Landroid/view/autofill/AutofillId;->getVirtualChildIntId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->isVisibleToUserForAutofill(I)Z

    move-result v5

    aput-boolean v5, v1, v2

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    sget-boolean v2, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "autofillClientGetViewVisibility(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AutofillClientController"

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-object v1
.end method

.method public blacklist autofillClientIsCompatibilityModeEnabled()Z
    .locals 1

    iget-object v0, p0, Landroid/view/autofill/AutofillClientController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isAutofillCompatibilityEnabled()Z

    move-result v0

    return v0
.end method

.method public blacklist autofillClientIsFillUiShowing()Z
    .locals 1

    iget-object v0, p0, Landroid/view/autofill/AutofillClientController;->mAutofillPopupWindow:Landroid/view/autofill/AutofillPopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/autofill/AutofillClientController;->mAutofillPopupWindow:Landroid/view/autofill/AutofillPopupWindow;

    invoke-virtual {v0}, Landroid/view/autofill/AutofillPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist autofillClientIsVisibleForAutofill()Z
    .locals 1

    iget-object v0, p0, Landroid/view/autofill/AutofillClientController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isVisibleForAutofill()Z

    move-result v0

    return v0
.end method

.method public blacklist autofillClientRequestHideFillUi()Z
    .locals 1

    iget-object v0, p0, Landroid/view/autofill/AutofillClientController;->mAutofillPopupWindow:Landroid/view/autofill/AutofillPopupWindow;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Landroid/view/autofill/AutofillClientController;->mAutofillPopupWindow:Landroid/view/autofill/AutofillPopupWindow;

    invoke-virtual {v0}, Landroid/view/autofill/AutofillPopupWindow;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/autofill/AutofillClientController;->mAutofillPopupWindow:Landroid/view/autofill/AutofillPopupWindow;

    const/4 v0, 0x1

    return v0
.end method

.method public blacklist autofillClientRequestShowFillUi(Landroid/view/View;IILandroid/graphics/Rect;Landroid/view/autofill/IAutofillWindowPresenter;)Z
    .locals 8

    iget-object v0, p0, Landroid/view/autofill/AutofillClientController;->mAutofillPopupWindow:Landroid/view/autofill/AutofillPopupWindow;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-instance v1, Landroid/view/autofill/AutofillPopupWindow;

    invoke-direct {v1, p5}, Landroid/view/autofill/AutofillPopupWindow;-><init>(Landroid/view/autofill/IAutofillWindowPresenter;)V

    iput-object v1, p0, Landroid/view/autofill/AutofillClientController;->mAutofillPopupWindow:Landroid/view/autofill/AutofillPopupWindow;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/view/autofill/AutofillClientController;->mAutofillPopupWindow:Landroid/view/autofill/AutofillPopupWindow;

    invoke-virtual {v0}, Landroid/view/autofill/AutofillPopupWindow;->isShowing()Z

    move-result v0

    :goto_0
    iget-object v1, p0, Landroid/view/autofill/AutofillClientController;->mAutofillPopupWindow:Landroid/view/autofill/AutofillPopupWindow;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    move v5, p2

    move v6, p3

    move-object v7, p4

    invoke-virtual/range {v1 .. v7}, Landroid/view/autofill/AutofillPopupWindow;->update(Landroid/view/View;IIIILandroid/graphics/Rect;)V

    if-nez v0, :cond_1

    iget-object v1, p0, Landroid/view/autofill/AutofillClientController;->mAutofillPopupWindow:Landroid/view/autofill/AutofillPopupWindow;

    invoke-virtual {v1}, Landroid/view/autofill/AutofillPopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public blacklist autofillClientResetableStateAvailable()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/autofill/AutofillClientController;->mAutoFillResetNeeded:Z

    return-void
.end method

.method public blacklist autofillClientRunOnUiThread(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Landroid/view/autofill/AutofillClientController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public whitelist dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    const-string v0, ""

    invoke-direct {p0}, Landroid/view/autofill/AutofillClientController;->getAutofillManager()Landroid/view/autofill/AutofillManager;

    move-result-object v1

    const-string v2, ""

    if-eqz v1, :cond_0

    invoke-virtual {v1, v2, p1}, Landroid/view/autofill/AutofillManager;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Autofill Compat Mode: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/view/autofill/AutofillClientController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->isAutofillCompatibilityEnabled()Z

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "No AutofillManager"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public blacklist enableAutofillCompatibilityIfNeeded()V
    .locals 2

    iget-object v0, p0, Landroid/view/autofill/AutofillClientController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isAutofillCompatibilityEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/autofill/AutofillClientController;->mActivity:Landroid/app/Activity;

    const-class v1, Landroid/view/autofill/AutofillManager;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/autofill/AutofillManager;->enableCompatibilityMode()V

    :cond_0
    return-void
.end method

.method public whitelist getDumpableName()Ljava/lang/String;
    .locals 1

    const-string v0, "AutofillManager"

    return-object v0
.end method

.method public blacklist getNextAutofillId()I
    .locals 2

    iget v0, p0, Landroid/view/autofill/AutofillClientController;->mLastAutofillId:I

    const v1, 0x7ffffffe

    if-ne v0, v1, :cond_0

    const v0, 0x3fffffff    # 1.9999999f

    iput v0, p0, Landroid/view/autofill/AutofillClientController;->mLastAutofillId:I

    :cond_0
    iget v0, p0, Landroid/view/autofill/AutofillClientController;->mLastAutofillId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/view/autofill/AutofillClientController;->mLastAutofillId:I

    iget v0, p0, Landroid/view/autofill/AutofillClientController;->mLastAutofillId:I

    return v0
.end method

.method public blacklist isDisablingEnterExitEventForAutofill()Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/autofill/AutofillClientController;->mAutoFillIgnoreFirstResumePause:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/view/autofill/AutofillClientController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isResumed()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public blacklist onActivityAttached(Landroid/app/Application;)V
    .locals 2

    iget-object v0, p0, Landroid/view/autofill/AutofillClientController;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Application;->getAutofillOptions()Landroid/content/AutofillOptions;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setAutofillOptions(Landroid/content/AutofillOptions;)V

    return-void
.end method

.method public blacklist onActivityBackPressed(Landroid/content/Intent;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "android.view.autofill.extra.RESTORE_SESSION_TOKEN"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/view/autofill/AutofillClientController;->restoreAutofillSaveUi(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public blacklist onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "@android:autofillResetNeeded"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/autofill/AutofillClientController;->mAutoFillResetNeeded:Z

    const-string v0, "android:lastAutofillId"

    const v1, 0x3fffffff    # 1.9999999f

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/view/autofill/AutofillClientController;->mLastAutofillId:I

    iget-boolean v0, p0, Landroid/view/autofill/AutofillClientController;->mAutoFillResetNeeded:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/view/autofill/AutofillClientController;->getAutofillManager()Landroid/view/autofill/AutofillManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/autofill/AutofillManager;->onCreate(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public blacklist onActivityDestroyed()V
    .locals 1

    iget-object v0, p0, Landroid/view/autofill/AutofillClientController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/view/autofill/AutofillClientController;->mAutoFillResetNeeded:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/view/autofill/AutofillClientController;->getAutofillManager()Landroid/view/autofill/AutofillManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/autofill/AutofillManager;->onActivityFinishing()V

    :cond_0
    return-void
.end method

.method public blacklist onActivityFinish(Landroid/content/Intent;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "android.view.autofill.extra.RESTORE_SESSION_TOKEN"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/view/autofill/AutofillClientController;->restoreAutofillSaveUi(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public blacklist onActivityPaused()V
    .locals 3

    iget-boolean v0, p0, Landroid/view/autofill/AutofillClientController;->mAutoFillResetNeeded:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Landroid/view/autofill/AutofillClientController;->mAutoFillIgnoreFirstResumePause:Z

    const-string v1, "AutofillClientController"

    if-nez v0, :cond_2

    sget-boolean v0, Landroid/view/autofill/AutofillClientController;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "autofill notifyViewExited "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroid/view/autofill/AutofillClientController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->canNotifyAutofillEnterExitEvent()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Landroid/view/autofill/AutofillClientController;->getAutofillManager()Landroid/view/autofill/AutofillManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/autofill/AutofillManager;->notifyViewExited(Landroid/view/View;)V

    :cond_1
    goto :goto_0

    :cond_2
    sget-boolean v0, Landroid/view/autofill/AutofillClientController;->DEBUG:Z

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "autofill got first pause "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/autofill/AutofillClientController;->mAutoFillIgnoreFirstResumePause:Z

    :cond_4
    :goto_0
    return-void
.end method

.method public blacklist onActivityPerformResume(Z)V
    .locals 2

    iget-boolean v0, p0, Landroid/view/autofill/AutofillClientController;->mAutoFillResetNeeded:Z

    if-eqz v0, :cond_0

    iput-boolean p1, p0, Landroid/view/autofill/AutofillClientController;->mAutoFillIgnoreFirstResumePause:Z

    iget-boolean v0, p0, Landroid/view/autofill/AutofillClientController;->mAutoFillIgnoreFirstResumePause:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Landroid/view/autofill/AutofillClientController;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "autofill will ignore first pause when relaunching "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutofillClientController"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public blacklist onActivityResumed()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/autofill/AutofillClientController;->enableAutofillCompatibilityIfNeeded()V

    iget-boolean v0, p0, Landroid/view/autofill/AutofillClientController;->mAutoFillResetNeeded:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/view/autofill/AutofillClientController;->mAutoFillIgnoreFirstResumePause:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/view/autofill/AutofillClientController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->canNotifyAutofillEnterExitEvent()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/view/autofill/AutofillClientController;->getAutofillManager()Landroid/view/autofill/AutofillManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/autofill/AutofillManager;->notifyViewEntered(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public blacklist onActivityStarted()V
    .locals 1

    iget-boolean v0, p0, Landroid/view/autofill/AutofillClientController;->mAutoFillResetNeeded:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/view/autofill/AutofillClientController;->getAutofillManager()Landroid/view/autofill/AutofillManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/autofill/AutofillManager;->onVisibleForAutofill()V

    :cond_0
    return-void
.end method

.method public blacklist onActivityStopped(Landroid/content/Intent;Z)V
    .locals 2

    iget-boolean v0, p0, Landroid/view/autofill/AutofillClientController;->mAutoFillResetNeeded:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/view/autofill/AutofillClientController;->getAutofillManager()Landroid/view/autofill/AutofillManager;

    move-result-object v0

    xor-int/lit8 v1, p2, 0x1

    invoke-virtual {v0, v1}, Landroid/view/autofill/AutofillManager;->onInvisibleForAutofill(Z)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    const-string v0, "android.view.autofill.extra.RESTORE_SESSION_TOKEN"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "android.view.autofill.extra.RESTORE_CROSS_ACTIVITY"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/autofill/AutofillClientController;->restoreAutofillSaveUi(Landroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public blacklist onDispatchActivityResult(IILandroid/content/Intent;)V
    .locals 3

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    move-object v0, p3

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0}, Landroid/view/autofill/AutofillClientController;->getAutofillManager()Landroid/view/autofill/AutofillManager;

    move-result-object v1

    iget-object v2, p0, Landroid/view/autofill/AutofillClientController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Landroid/view/autofill/AutofillManager;->onAuthenticationResult(ILandroid/content/Intent;Landroid/view/View;)V

    return-void
.end method

.method public blacklist onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "android:lastAutofillId"

    iget v1, p0, Landroid/view/autofill/AutofillClientController;->mLastAutofillId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-boolean v0, p0, Landroid/view/autofill/AutofillClientController;->mAutoFillResetNeeded:Z

    if-eqz v0, :cond_0

    const-string v0, "@android:autofillResetNeeded"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-direct {p0}, Landroid/view/autofill/AutofillClientController;->getAutofillManager()Landroid/view/autofill/AutofillManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/autofill/AutofillManager;->onSaveInstanceState(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public blacklist onStartActivity(Landroid/content/Intent;Landroid/content/Intent;)V
    .locals 4

    if-eqz p2, :cond_0

    const-string v0, "android.view.autofill.extra.RESTORE_SESSION_TOKEN"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "android.view.autofill.extra.RESTORE_CROSS_ACTIVITY"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/view/autofill/AutofillClientController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/view/autofill/AutofillClientController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    nop

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getIBinderExtra(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {p2, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/IBinder;)Landroid/content/Intent;

    const/4 v0, 0x1

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method public blacklist restoreAutofillSaveUi(Landroid/content/Intent;)V
    .locals 3

    nop

    const-string v0, "android.view.autofill.extra.RESTORE_SESSION_TOKEN"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getIBinderExtra(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {p1, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    const-string v0, "android.view.autofill.extra.RESTORE_CROSS_ACTIVITY"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/view/autofill/AutofillClientController;->getAutofillManager()Landroid/view/autofill/AutofillManager;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/view/autofill/AutofillManager;->onPendingSaveUi(ILandroid/os/IBinder;)V

    return-void
.end method
