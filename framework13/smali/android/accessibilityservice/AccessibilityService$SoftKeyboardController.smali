.class public final Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;
.super Ljava/lang/Object;
.source "AccessibilityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accessibilityservice/AccessibilityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SoftKeyboardController"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController$OnShowModeChangedListener;,
        Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController$EnableImeResult;
    }
.end annotation


# static fields
.field public static final whitelist ENABLE_IME_FAIL_BY_ADMIN:I = 0x1

.field public static final whitelist ENABLE_IME_FAIL_UNKNOWN:I = 0x2

.field public static final whitelist ENABLE_IME_SUCCESS:I


# instance fields
.field private greylist-max-o mListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController$OnShowModeChangedListener;",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mLock:Ljava/lang/Object;

.field private final greylist-max-o mService:Landroid/accessibilityservice/AccessibilityService;


# direct methods
.method constructor greylist-max-o <init>(Landroid/accessibilityservice/AccessibilityService;Ljava/lang/Object;)V
    .locals 0
    .param p1, "service"    # Landroid/accessibilityservice/AccessibilityService;
    .param p2, "lock"    # Ljava/lang/Object;

    .line 1984
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1985
    iput-object p1, p0, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;->mService:Landroid/accessibilityservice/AccessibilityService;

    .line 1986
    iput-object p2, p0, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;->mLock:Ljava/lang/Object;

    .line 1987
    return-void
.end method

.method private greylist-max-o setSoftKeyboardCallbackEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .line 2066
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;->mService:Landroid/accessibilityservice/AccessibilityService;

    .line 2067
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityInteractionClient;

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;->mService:Landroid/accessibilityservice/AccessibilityService;

    invoke-static {v0}, Landroid/accessibilityservice/AccessibilityService;->-$$Nest$fgetmConnectionId(Landroid/accessibilityservice/AccessibilityService;)I

    move-result v0

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    .line 2069
    .local v0, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v0, :cond_0

    .line 2071
    :try_start_0
    invoke-interface {v0, p1}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->setSoftKeyboardCallbackEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2074
    goto :goto_0

    .line 2072
    :catch_0
    move-exception v1

    .line 2073
    .local v1, "re":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 2076
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public whitelist addOnShowModeChangedListener(Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController$OnShowModeChangedListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController$OnShowModeChangedListener;

    .line 2005
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;->addOnShowModeChangedListener(Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController$OnShowModeChangedListener;Landroid/os/Handler;)V

    .line 2006
    return-void
.end method

.method public whitelist addOnShowModeChangedListener(Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController$OnShowModeChangedListener;Landroid/os/Handler;)V
    .locals 3
    .param p1, "listener"    # Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController$OnShowModeChangedListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 2019
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2020
    :try_start_0
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;->mListeners:Landroid/util/ArrayMap;

    if-nez v1, :cond_0

    .line 2021
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;->mListeners:Landroid/util/ArrayMap;

    .line 2024
    :cond_0
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    .line 2025
    .local v1, "shouldEnableCallback":Z
    iget-object v2, p0, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2027
    if-eqz v1, :cond_1

    .line 2030
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;->setSoftKeyboardCallbackEnabled(Z)V

    .line 2032
    .end local v1    # "shouldEnableCallback":Z
    :cond_1
    monitor-exit v0

    .line 2033
    return-void

    .line 2032
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method greylist-max-o dispatchSoftKeyboardShowModeChanged(I)V
    .locals 6
    .param p1, "showMode"    # I

    .line 2084
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2085
    :try_start_0
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;->mListeners:Landroid/util/ArrayMap;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 2094
    :cond_0
    new-instance v1, Landroid/util/ArrayMap;

    iget-object v2, p0, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;->mListeners:Landroid/util/ArrayMap;

    invoke-direct {v1, v2}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    .line 2095
    .local v1, "entries":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController$OnShowModeChangedListener;Landroid/os/Handler;>;"
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2097
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .local v2, "count":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 2098
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController$OnShowModeChangedListener;

    .line 2099
    .local v3, "listener":Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController$OnShowModeChangedListener;
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Handler;

    .line 2100
    .local v4, "handler":Landroid/os/Handler;
    if-eqz v4, :cond_1

    .line 2101
    new-instance v5, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController$1;

    invoke-direct {v5, p0, v3, p1}, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController$1;-><init>(Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController$OnShowModeChangedListener;I)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 2109
    :cond_1
    invoke-interface {v3, p0, p1}, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController$OnShowModeChangedListener;->onShowModeChanged(Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;I)V

    .line 2097
    .end local v3    # "listener":Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController$OnShowModeChangedListener;
    .end local v4    # "handler":Landroid/os/Handler;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2112
    .end local v0    # "i":I
    .end local v2    # "count":I
    :cond_2
    return-void

    .line 2086
    .end local v1    # "entries":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController$OnShowModeChangedListener;Landroid/os/Handler;>;"
    :cond_3
    :goto_2
    :try_start_1
    const-string v1, "AccessibilityService"

    const-string v2, "Received soft keyboard show mode changed callback with no listeners registered!"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2088
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;->setSoftKeyboardCallbackEnabled(Z)V

    .line 2089
    monitor-exit v0

    return-void

    .line 2095
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public whitelist getShowMode()I
    .locals 4

    .line 2125
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;->mService:Landroid/accessibilityservice/AccessibilityService;

    .line 2126
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityInteractionClient;

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;->mService:Landroid/accessibilityservice/AccessibilityService;

    invoke-static {v0}, Landroid/accessibilityservice/AccessibilityService;->-$$Nest$fgetmConnectionId(Landroid/accessibilityservice/AccessibilityService;)I

    move-result v0

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    .line 2128
    .local v0, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v0, :cond_0

    .line 2130
    :try_start_0
    invoke-interface {v0}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->getSoftKeyboardShowMode()I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 2131
    :catch_0
    move-exception v1

    .line 2132
    .local v1, "re":Landroid/os/RemoteException;
    const-string v2, "AccessibilityService"

    const-string v3, "Failed to set soft keyboard behavior"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2133
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 2136
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method greylist-max-o onServiceConnected()V
    .locals 2

    .line 1993
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1994
    :try_start_0
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;->mListeners:Landroid/util/ArrayMap;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1995
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;->setSoftKeyboardCallbackEnabled(Z)V

    .line 1997
    :cond_0
    monitor-exit v0

    .line 1998
    return-void

    .line 1997
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist removeOnShowModeChangedListener(Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController$OnShowModeChangedListener;)Z
    .locals 5
    .param p1, "listener"    # Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController$OnShowModeChangedListener;

    .line 2044
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;->mListeners:Landroid/util/ArrayMap;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2045
    return v1

    .line 2048
    :cond_0
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2049
    :try_start_0
    iget-object v2, p0, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v2

    .line 2050
    .local v2, "keyIndex":I
    if-ltz v2, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    move v3, v1

    .line 2051
    .local v3, "hasKey":Z
    :goto_0
    if-eqz v3, :cond_2

    .line 2052
    iget-object v4, p0, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 2055
    :cond_2
    if-eqz v3, :cond_3

    iget-object v4, p0, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2058
    invoke-direct {p0, v1}, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;->setSoftKeyboardCallbackEnabled(Z)V

    .line 2061
    :cond_3
    monitor-exit v0

    return v3

    .line 2062
    .end local v2    # "keyIndex":I
    .end local v3    # "hasKey":Z
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist setInputMethodEnabled(Ljava/lang/String;Z)I
    .locals 3
    .param p1, "imeId"    # Ljava/lang/String;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2233
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;->mService:Landroid/accessibilityservice/AccessibilityService;

    .line 2234
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityInteractionClient;

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;->mService:Landroid/accessibilityservice/AccessibilityService;

    invoke-static {v0}, Landroid/accessibilityservice/AccessibilityService;->-$$Nest$fgetmConnectionId(Landroid/accessibilityservice/AccessibilityService;)I

    move-result v0

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    .line 2236
    .local v0, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v0, :cond_0

    .line 2238
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->setInputMethodEnabled(Ljava/lang/String;Z)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 2239
    :catch_0
    move-exception v1

    .line 2240
    .local v1, "re":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 2243
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x2

    return v1
.end method

.method public whitelist setShowMode(I)Z
    .locals 4
    .param p1, "showMode"    # I

    .line 2154
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;->mService:Landroid/accessibilityservice/AccessibilityService;

    .line 2155
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityInteractionClient;

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;->mService:Landroid/accessibilityservice/AccessibilityService;

    invoke-static {v0}, Landroid/accessibilityservice/AccessibilityService;->-$$Nest$fgetmConnectionId(Landroid/accessibilityservice/AccessibilityService;)I

    move-result v0

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    .line 2157
    .local v0, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v0, :cond_0

    .line 2159
    :try_start_0
    invoke-interface {v0, p1}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->setSoftKeyboardShowMode(I)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 2160
    :catch_0
    move-exception v1

    .line 2161
    .local v1, "re":Landroid/os/RemoteException;
    const-string v2, "AccessibilityService"

    const-string v3, "Failed to set soft keyboard behavior"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2162
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 2165
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist switchToInputMethod(Ljava/lang/String;)Z
    .locals 3
    .param p1, "imeId"    # Ljava/lang/String;

    .line 2200
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;->mService:Landroid/accessibilityservice/AccessibilityService;

    .line 2201
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityInteractionClient;

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;->mService:Landroid/accessibilityservice/AccessibilityService;

    invoke-static {v0}, Landroid/accessibilityservice/AccessibilityService;->-$$Nest$fgetmConnectionId(Landroid/accessibilityservice/AccessibilityService;)I

    move-result v0

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    .line 2203
    .local v0, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v0, :cond_0

    .line 2205
    :try_start_0
    invoke-interface {v0, p1}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->switchToInputMethod(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 2206
    :catch_0
    move-exception v1

    .line 2207
    .local v1, "re":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 2210
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method
