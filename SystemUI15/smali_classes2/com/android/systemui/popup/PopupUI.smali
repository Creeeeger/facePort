.class public Lcom/android/systemui/popup/PopupUI;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/CoreStartable;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# static fields
.field public static final TAG:Ljava/lang/String; = "PopupUI"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

.field private mPopupUIReceiver:Landroid/content/BroadcastReceiver;

.field private mViewModelList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/popup/viewmodel/PopupUIViewModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static bridge synthetic -$$Nest$fgetmLogWrapper(Lcom/android/systemui/popup/PopupUI;)Lcom/android/systemui/basic/util/LogWrapper;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/popup/PopupUI;->mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmViewModelList(Lcom/android/systemui/popup/PopupUI;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/popup/PopupUI;->mViewModelList:Ljava/util/List;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/basic/util/LogWrapper;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/basic/util/LogWrapper;",
            "Ljava/util/List<",
            "Lcom/android/systemui/popup/viewmodel/PopupUIViewModel;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/popup/PopupUI$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/popup/PopupUI$1;-><init>(Lcom/android/systemui/popup/PopupUI;)V

    iput-object v0, p0, Lcom/android/systemui/popup/PopupUI;->mPopupUIReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/systemui/popup/PopupUI;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/popup/PopupUI;->mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    iput-object p3, p0, Lcom/android/systemui/popup/PopupUI;->mViewModelList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public bridge synthetic dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic isDumpCritical()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic onBootCompleted()V
    .locals 0

    return-void
.end method

.method public bridge synthetic onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onDensityOrFontScaleChanged()V
    .locals 0

    return-void
.end method

.method public bridge synthetic onDisplayDeviceTypeChanged()V
    .locals 0

    return-void
.end method

.method public bridge synthetic onLayoutDirectionChanged(Z)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onLocaleListChanged()V
    .locals 0

    return-void
.end method

.method public bridge synthetic onMaxBoundsChanged()V
    .locals 0

    return-void
.end method

.method public bridge synthetic onOrientationChanged(I)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onSmallestScreenWidthChanged()V
    .locals 0

    return-void
.end method

.method public bridge synthetic onThemeChanged()V
    .locals 0

    return-void
.end method

.method public bridge synthetic onTrimMemory(I)V
    .locals 0

    return-void
.end method

.method public onUiModeChanged()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/popup/PopupUI;->mViewModelList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/popup/viewmodel/PopupUIViewModel;

    invoke-interface {v0}, Lcom/android/systemui/popup/viewmodel/PopupUIViewModel;->dismiss()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public start()V
    .locals 8

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    iget-object v0, p0, Lcom/android/systemui/popup/PopupUI;->mViewModelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/popup/viewmodel/PopupUIViewModel;

    invoke-interface {v1}, Lcom/android/systemui/popup/viewmodel/PopupUIViewModel;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->hasAction(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/popup/PopupUI;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/popup/PopupUI;->mPopupUIReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x0

    const/4 v7, 0x2

    const-string v5, "com.samsung.systemui.POPUP_UI_PERMISSION"

    invoke-virtual/range {v1 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    return-void
.end method
