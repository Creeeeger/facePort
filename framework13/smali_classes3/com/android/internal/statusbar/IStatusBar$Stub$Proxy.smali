.class Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;
.super Ljava/lang/Object;
.source "IStatusBar.java"

# interfaces
.implements Lcom/android/internal/statusbar/IStatusBar;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/statusbar/IStatusBar$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private greylist-max-o mRemote:Landroid/os/IBinder;


# direct methods
.method constructor greylist-max-o <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 1494
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1495
    iput-object p1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 1496
    return-void
.end method


# virtual methods
.method public blacklist abortTransient(I[I)V
    .locals 5
    .param p1, "displayId"    # I
    .param p2, "types"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2205
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2207
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2208
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2209
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 2210
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x32

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2213
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2214
    nop

    .line 2215
    return-void

    .line 2213
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2214
    throw v1
.end method

.method public greylist-max-o addQsTile(Landroid/content/ComponentName;)V
    .locals 5
    .param p1, "tile"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1927
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1929
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1930
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1931
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x20

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1934
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1935
    nop

    .line 1936
    return-void

    .line 1934
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1935
    throw v1
.end method

.method public greylist-max-o animateCollapsePanels()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1569
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1571
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1572
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1575
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1576
    nop

    .line 1577
    return-void

    .line 1575
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1576
    throw v1
.end method

.method public greylist-max-o animateExpandNotificationsPanel()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1546
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1548
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1549
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1552
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1553
    nop

    .line 1554
    return-void

    .line 1552
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1553
    throw v1
.end method

.method public greylist-max-o animateExpandSettingsPanel(Ljava/lang/String;)V
    .locals 5
    .param p1, "subPanel"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1557
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1559
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1560
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1561
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1564
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1565
    nop

    .line 1566
    return-void

    .line 1564
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1565
    throw v1
.end method

.method public blacklist appTransitionCancelled(I)V
    .locals 5
    .param p1, "displayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1760
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1762
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1763
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1764
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x15

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1767
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1768
    nop

    .line 1769
    return-void

    .line 1767
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1768
    throw v1
.end method

.method public blacklist appTransitionFinished(I)V
    .locals 5
    .param p1, "displayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1800
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1802
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1803
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1804
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x17

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1807
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1808
    nop

    .line 1809
    return-void

    .line 1807
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1808
    throw v1
.end method

.method public blacklist appTransitionPending(I)V
    .locals 5
    .param p1, "displayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1743
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1745
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1746
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1747
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x14

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1750
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1751
    nop

    .line 1752
    return-void

    .line 1750
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1751
    throw v1
.end method

.method public blacklist appTransitionStarting(IJJ)V
    .locals 5
    .param p1, "displayId"    # I
    .param p2, "statusBarAnimationsStartTime"    # J
    .param p4, "statusBarAnimationsDuration"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1781
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1783
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1784
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1785
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 1786
    invoke-virtual {v0, p4, p5}, Landroid/os/Parcel;->writeLong(J)V

    .line 1787
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x16

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1790
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1791
    nop

    .line 1792
    return-void

    .line 1790
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1791
    throw v1
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 1499
    iget-object v0, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public greylist-max-o cancelPreloadRecentApps()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1691
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1693
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1694
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x10

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1697
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1698
    nop

    .line 1699
    return-void

    .line 1697
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1698
    throw v1
.end method

.method public blacklist cancelRequestAddTile(Ljava/lang/String;)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2444
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2446
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2447
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2448
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x41

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2451
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2452
    nop

    .line 2453
    return-void

    .line 2451
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2452
    throw v1
.end method

.method public greylist-max-o clickQsTile(Landroid/content/ComponentName;)V
    .locals 5
    .param p1, "tile"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1951
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1953
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1954
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1955
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x22

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1958
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1959
    nop

    .line 1960
    return-void

    .line 1958
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1959
    throw v1
.end method

.method public blacklist disable(III)V
    .locals 5
    .param p1, "displayId"    # I
    .param p2, "state1"    # I
    .param p3, "state2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1532
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1534
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1535
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1536
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1537
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1538
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1541
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1542
    nop

    .line 1543
    return-void

    .line 1541
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1542
    throw v1
.end method

.method public blacklist dismissInattentiveSleepWarning(Z)V
    .locals 5
    .param p1, "animated"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2231
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2233
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2234
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2235
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x34

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2238
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2239
    nop

    .line 2240
    return-void

    .line 2238
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2239
    throw v1
.end method

.method public greylist-max-o dismissKeyboardShortcutsMenu()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1714
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1716
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1717
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x12

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1720
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1721
    nop

    .line 1722
    return-void

    .line 1720
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1721
    throw v1
.end method

.method public greylist-max-o getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 1503
    const-string v0, "com.android.internal.statusbar.IStatusBar"

    return-object v0
.end method

.method public greylist-max-o handleSystemKey(I)V
    .locals 5
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1963
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1965
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1966
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1967
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x23

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1970
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1971
    nop

    .line 1972
    return-void

    .line 1970
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1971
    throw v1
.end method

.method public blacklist handleWindowManagerLoggingCommand([Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V
    .locals 5
    .param p1, "args"    # [Ljava/lang/String;
    .param p2, "outFd"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2308
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2310
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2311
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 2312
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2313
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x39

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2316
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2317
    nop

    .line 2318
    return-void

    .line 2316
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2317
    throw v1
.end method

.method public blacklist hideAuthenticationDialog(J)V
    .locals 5
    .param p1, "requestId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2077
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2079
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2080
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 2081
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x2b

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2084
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2085
    nop

    .line 2086
    return-void

    .line 2084
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2085
    throw v1
.end method

.method public greylist-max-o hideRecentApps(ZZ)V
    .locals 5
    .param p1, "triggeredFromAltTab"    # Z
    .param p2, "triggeredFromHomeKey"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1645
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1647
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1648
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1649
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1650
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xc

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1653
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1654
    nop

    .line 1655
    return-void

    .line 1653
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1654
    throw v1
.end method

.method public blacklist hideToast(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2270
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2272
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2273
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2274
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2275
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x36

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2278
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2279
    nop

    .line 2280
    return-void

    .line 2278
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2279
    throw v1
.end method

.method public blacklist notifyRequestedGameToolsWin(Z)V
    .locals 5
    .param p1, "attached"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2520
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2522
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2523
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2524
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x46

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2527
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2528
    nop

    .line 2529
    return-void

    .line 2527
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2528
    throw v1
.end method

.method public blacklist notifyRequestedSystemKey(ZZ)V
    .locals 5
    .param p1, "isRequestedRecentKey"    # Z
    .param p2, "isRequestedHomeKey"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2566
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2568
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2569
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2570
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2571
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x49

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2574
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2575
    nop

    .line 2576
    return-void

    .line 2574
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2575
    throw v1
.end method

.method public blacklist notifySamsungPayInfo(IZLandroid/graphics/Rect;)V
    .locals 5
    .param p1, "displayId"    # I
    .param p2, "visible"    # Z
    .param p3, "frame"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2644
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2646
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2647
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2648
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2649
    const/4 v1, 0x0

    invoke-virtual {v0, p3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2650
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x4e

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2653
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2654
    nop

    .line 2655
    return-void

    .line 2653
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2654
    throw v1
.end method

.method public blacklist onBiometricAuthenticated(I)V
    .locals 5
    .param p1, "modality"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2035
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2037
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2038
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2039
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x28

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2042
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2043
    nop

    .line 2044
    return-void

    .line 2042
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2043
    throw v1
.end method

.method public blacklist onBiometricError(III)V
    .locals 5
    .param p1, "modality"    # I
    .param p2, "error"    # I
    .param p3, "vendorCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2062
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2064
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2065
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2066
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2067
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2068
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x2a

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2071
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2072
    nop

    .line 2073
    return-void

    .line 2071
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2072
    throw v1
.end method

.method public blacklist onBiometricHelp(ILjava/lang/String;)V
    .locals 5
    .param p1, "modality"    # I
    .param p2, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2048
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2050
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2051
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2052
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2053
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x29

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2056
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2057
    nop

    .line 2058
    return-void

    .line 2056
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2057
    throw v1
.end method

.method public greylist-max-o onCameraLaunchGestureDetected(I)V
    .locals 5
    .param p1, "source"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1840
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1842
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1843
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1844
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x1a

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1847
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1848
    nop

    .line 1849
    return-void

    .line 1847
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1848
    throw v1
.end method

.method public blacklist onDisplayReady(I)V
    .locals 5
    .param p1, "displayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2116
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2118
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2119
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2120
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x2e

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2123
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2124
    nop

    .line 2125
    return-void

    .line 2123
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2124
    throw v1
.end method

.method public blacklist onEmergencyActionLaunchGestureDetected()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1857
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1859
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1860
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x1b

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1863
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1864
    nop

    .line 1865
    return-void

    .line 1863
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1864
    throw v1
.end method

.method public blacklist onFocusedDisplayChanged(I)V
    .locals 5
    .param p1, "focusedDisplayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2548
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2550
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2551
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2552
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x48

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2555
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2556
    nop

    .line 2557
    return-void

    .line 2555
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2556
    throw v1
.end method

.method public greylist-max-o onProposedRotationChanged(IZ)V
    .locals 5
    .param p1, "rotation"    # I
    .param p2, "isValid"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1897
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1899
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1900
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1901
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1902
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x1e

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1905
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1906
    nop

    .line 1907
    return-void

    .line 1905
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1906
    throw v1
.end method

.method public blacklist onRecentsAnimationStateChanged(Z)V
    .locals 5
    .param p1, "running"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2129
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2131
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2132
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2133
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x2f

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2136
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2137
    nop

    .line 2138
    return-void

    .line 2136
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2137
    throw v1
.end method

.method public blacklist onSystemBarAttributesChanged(II[Lcom/android/internal/view/AppearanceRegion;ZILandroid/view/InsetsVisibilities;Ljava/lang/String;)V
    .locals 5
    .param p1, "displayId"    # I
    .param p2, "appearance"    # I
    .param p3, "appearanceRegions"    # [Lcom/android/internal/view/AppearanceRegion;
    .param p4, "navbarColorManagedByIme"    # Z
    .param p5, "behavior"    # I
    .param p6, "requestedVisibilities"    # Landroid/view/InsetsVisibilities;
    .param p7, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2156
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2158
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2159
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2160
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2161
    const/4 v1, 0x0

    invoke-virtual {v0, p3, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 2162
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2163
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 2164
    invoke-virtual {v0, p6, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2165
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2166
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x30

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2169
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2170
    nop

    .line 2171
    return-void

    .line 2169
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2170
    throw v1
.end method

.method public blacklist passThroughShellCommand([Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V
    .locals 5
    .param p1, "args"    # [Ljava/lang/String;
    .param p2, "pfd"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2359
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2361
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2362
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 2363
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2364
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x3c

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2367
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2368
    nop

    .line 2369
    return-void

    .line 2367
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2368
    throw v1
.end method

.method public greylist-max-o preloadRecentApps()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1680
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1682
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1683
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xf

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1686
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1687
    nop

    .line 1688
    return-void

    .line 1686
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1687
    throw v1
.end method

.method public blacklist registerNearbyMediaDevicesProvider(Landroid/media/INearbyMediaDevicesProvider;)V
    .locals 5
    .param p1, "provider"    # Landroid/media/INearbyMediaDevicesProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2494
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2496
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2497
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 2498
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x44

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2501
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2502
    nop

    .line 2503
    return-void

    .line 2501
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2502
    throw v1
.end method

.method public greylist-max-o remQsTile(Landroid/content/ComponentName;)V
    .locals 5
    .param p1, "tile"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1939
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1941
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1942
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1943
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x21

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1946
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1947
    nop

    .line 1948
    return-void

    .line 1946
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1947
    throw v1
.end method

.method public greylist-max-o removeIcon(Ljava/lang/String;)V
    .locals 5
    .param p1, "slot"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1520
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1522
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1523
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1524
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1527
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1528
    nop

    .line 1529
    return-void

    .line 1527
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1528
    throw v1
.end method

.method public blacklist requestAddTile(Landroid/content/ComponentName;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;Lcom/android/internal/statusbar/IAddTileResultCallback;)V
    .locals 5
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "appName"    # Ljava/lang/CharSequence;
    .param p3, "label"    # Ljava/lang/CharSequence;
    .param p4, "icon"    # Landroid/graphics/drawable/Icon;
    .param p5, "callback"    # Lcom/android/internal/statusbar/IAddTileResultCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2416
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2418
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2419
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2420
    const/4 v2, 0x1

    if-eqz p2, :cond_0

    .line 2421
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2422
    invoke-static {p2, v0, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    goto :goto_0

    .line 2425
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2427
    :goto_0
    if-eqz p3, :cond_1

    .line 2428
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2429
    invoke-static {p3, v0, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    goto :goto_1

    .line 2432
    :cond_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2434
    :goto_1
    invoke-virtual {v0, p4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2435
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 2436
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x40

    const/4 v4, 0x0

    invoke-interface {v1, v3, v0, v4, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2439
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2440
    nop

    .line 2441
    return-void

    .line 2439
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2440
    throw v1
.end method

.method public blacklist requestTileServiceListeningState(Landroid/content/ComponentName;)V
    .locals 5
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2404
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2406
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2407
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2408
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x3f

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2411
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2412
    nop

    .line 2413
    return-void

    .line 2411
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2412
    throw v1
.end method

.method public blacklist requestWindowMagnificationConnection(Z)V
    .locals 5
    .param p1, "connect"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2343
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2345
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2346
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2347
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x3b

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2350
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2351
    nop

    .line 2352
    return-void

    .line 2350
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2351
    throw v1
.end method

.method public blacklist resetScheduleAutoHide()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2629
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2631
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2632
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x4d

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2635
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2636
    nop

    .line 2637
    return-void

    .line 2635
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2636
    throw v1
.end method

.method public blacklist runGcForTest()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2392
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2394
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2395
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x3e

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2398
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2399
    nop

    .line 2400
    return-void

    .line 2398
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2399
    throw v1
.end method

.method public blacklist sendKeyEventToDesktopTaskbar(Landroid/view/KeyEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/view/KeyEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2534
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2536
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2537
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2538
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x47

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2541
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2542
    nop

    .line 2543
    return-void

    .line 2541
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2542
    throw v1
.end method

.method public blacklist sendThreeFingerGestureKeyEvent(Landroid/view/KeyEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/view/KeyEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2581
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2583
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2584
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2585
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x4a

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2588
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2589
    nop

    .line 2590
    return-void

    .line 2588
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2589
    throw v1
.end method

.method public blacklist setBiometicContextListener(Landroid/hardware/biometrics/IBiometricContextListener;)V
    .locals 5
    .param p1, "listener"    # Landroid/hardware/biometrics/IBiometricContextListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2090
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2092
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2093
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 2094
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x2c

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2097
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2098
    nop

    .line 2099
    return-void

    .line 2097
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2098
    throw v1
.end method

.method public blacklist setBlueLightFilter(ZI)V
    .locals 5
    .param p1, "on"    # Z
    .param p2, "intensity"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2595
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2597
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2598
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2599
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2600
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x4b

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2603
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2604
    nop

    .line 2605
    return-void

    .line 2603
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2604
    throw v1
.end method

.method public greylist-max-o setIcon(Ljava/lang/String;Lcom/android/internal/statusbar/StatusBarIcon;)V
    .locals 4
    .param p1, "slot"    # Ljava/lang/String;
    .param p2, "icon"    # Lcom/android/internal/statusbar/StatusBarIcon;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1507
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1509
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1510
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1511
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1512
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1515
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1516
    nop

    .line 1517
    return-void

    .line 1515
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1516
    throw v1
.end method

.method public blacklist setImeWindowStatus(ILandroid/os/IBinder;IIZ)V
    .locals 5
    .param p1, "displayId"    # I
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "vis"    # I
    .param p4, "backDisposition"    # I
    .param p5, "showImeSwitcher"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1603
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1605
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1606
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1607
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1608
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1609
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1610
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1611
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x9

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1614
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1615
    nop

    .line 1616
    return-void

    .line 1614
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1615
    throw v1
.end method

.method public blacklist setIndicatorBgColor(I)V
    .locals 5
    .param p1, "color"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2662
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2664
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2665
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2666
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x4f

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2669
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2670
    nop

    .line 2671
    return-void

    .line 2669
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2670
    throw v1
.end method

.method public blacklist setNavigationBarLumaSamplingEnabled(IZ)V
    .locals 5
    .param p1, "displayId"    # I
    .param p2, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2378
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2380
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2381
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2382
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2383
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x3d

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2386
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2387
    nop

    .line 2388
    return-void

    .line 2386
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2387
    throw v1
.end method

.method public blacklist setNavigationBarShortcut(Ljava/lang/String;Landroid/widget/RemoteViews;II)V
    .locals 5
    .param p1, "requestClass"    # Ljava/lang/String;
    .param p2, "remoteViews"    # Landroid/widget/RemoteViews;
    .param p3, "position"    # I
    .param p4, "priority"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2613
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2615
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2616
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2617
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2618
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2619
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2620
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x4c

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2623
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2624
    nop

    .line 2625
    return-void

    .line 2623
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2624
    throw v1
.end method

.method public greylist-max-o setTopAppHidesStatusBar(Z)V
    .locals 5
    .param p1, "hidesStatusBar"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1915
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1917
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1918
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1919
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x1f

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1922
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1923
    nop

    .line 1924
    return-void

    .line 1922
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1923
    throw v1
.end method

.method public blacklist setUdfpsHbmListener(Landroid/hardware/fingerprint/IUdfpsHbmListener;)V
    .locals 5
    .param p1, "listener"    # Landroid/hardware/fingerprint/IUdfpsHbmListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2103
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2105
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2106
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 2107
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x2d

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2110
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2111
    nop

    .line 2112
    return-void

    .line 2110
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2111
    throw v1
.end method

.method public blacklist setWindowState(III)V
    .locals 5
    .param p1, "display"    # I
    .param p2, "window"    # I
    .param p3, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1619
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1621
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1622
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1623
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1624
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1625
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xa

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1628
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1629
    nop

    .line 1630
    return-void

    .line 1628
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1629
    throw v1
.end method

.method public greylist-max-o showAssistDisclosure()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1812
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1814
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1815
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x18

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1818
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1819
    nop

    .line 1820
    return-void

    .line 1818
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1819
    throw v1
.end method

.method public blacklist showAuthenticationDialog(Landroid/hardware/biometrics/PromptInfo;Landroid/hardware/biometrics/IBiometricSysuiReceiver;[IZZIJLjava/lang/String;JI)V
    .locals 16
    .param p1, "promptInfo"    # Landroid/hardware/biometrics/PromptInfo;
    .param p2, "sysuiReceiver"    # Landroid/hardware/biometrics/IBiometricSysuiReceiver;
    .param p3, "sensorIds"    # [I
    .param p4, "credentialAllowed"    # Z
    .param p5, "requireConfirmation"    # Z
    .param p6, "userId"    # I
    .param p7, "operationId"    # J
    .param p9, "opPackageName"    # Ljava/lang/String;
    .param p10, "requestId"    # J
    .param p12, "multiSensorConfig"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2013
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2015
    .local v1, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v0, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2016
    const/4 v0, 0x0

    move-object/from16 v2, p1

    invoke-virtual {v1, v2, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2017
    move-object/from16 v3, p2

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_9

    .line 2018
    move-object/from16 v4, p3

    :try_start_1
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeIntArray([I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_8

    .line 2019
    move/from16 v5, p4

    :try_start_2
    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeBoolean(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_7

    .line 2020
    move/from16 v6, p5

    :try_start_3
    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeBoolean(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    .line 2021
    move/from16 v7, p6

    :try_start_4
    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 2022
    move-wide/from16 v8, p7

    :try_start_5
    invoke-virtual {v1, v8, v9}, Landroid/os/Parcel;->writeLong(J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 2023
    move-object/from16 v10, p9

    :try_start_6
    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 2024
    move-wide/from16 v11, p10

    :try_start_7
    invoke-virtual {v1, v11, v12}, Landroid/os/Parcel;->writeLong(J)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 2025
    move/from16 v13, p12

    :try_start_8
    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 2026
    move-object/from16 v14, p0

    :try_start_9
    iget-object v0, v14, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v15, 0x27

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v0, v15, v1, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 2029
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2030
    nop

    .line 2031
    return-void

    .line 2029
    :catchall_0
    move-exception v0

    goto :goto_7

    :catchall_1
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_7

    :catchall_2
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_6

    :catchall_3
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_5

    :catchall_4
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_4

    :catchall_5
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_3

    :catchall_6
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_2

    :catchall_7
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_1

    :catchall_8
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_0

    :catchall_9
    move-exception v0

    move-object/from16 v14, p0

    move-object/from16 v4, p3

    :goto_0
    move/from16 v5, p4

    :goto_1
    move/from16 v6, p5

    :goto_2
    move/from16 v7, p6

    :goto_3
    move-wide/from16 v8, p7

    :goto_4
    move-object/from16 v10, p9

    :goto_5
    move-wide/from16 v11, p10

    :goto_6
    move/from16 v13, p12

    :goto_7
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2030
    throw v0
.end method

.method public blacklist showGlobalActionsMenu(I)V
    .locals 5
    .param p1, "sideKeyType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1883
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1885
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1886
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1887
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x1d

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1890
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1891
    nop

    .line 1892
    return-void

    .line 1890
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1891
    throw v1
.end method

.method public blacklist showInattentiveSleepWarning()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2219
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2221
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2222
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x33

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2225
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2226
    nop

    .line 2227
    return-void

    .line 2225
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2226
    throw v1
.end method

.method public greylist-max-o showPictureInPictureMenu()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1869
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1871
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1872
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x1c

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1875
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1876
    nop

    .line 1877
    return-void

    .line 1875
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1876
    throw v1
.end method

.method public greylist-max-o showPinningEnterExitToast(Z)V
    .locals 5
    .param p1, "entering"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1976
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1978
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1979
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1980
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x24

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1983
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1984
    nop

    .line 1985
    return-void

    .line 1983
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1984
    throw v1
.end method

.method public greylist-max-o showPinningEscapeToast()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1988
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1990
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1991
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x25

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1994
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1995
    nop

    .line 1996
    return-void

    .line 1994
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1995
    throw v1
.end method

.method public greylist-max-o showRecentApps(Z)V
    .locals 5
    .param p1, "triggeredFromAltTab"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1633
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1635
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1636
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1637
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xb

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1640
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1641
    nop

    .line 1642
    return-void

    .line 1640
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1641
    throw v1
.end method

.method public greylist-max-o showScreenPinningRequest(I)V
    .locals 5
    .param p1, "taskId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1702
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1704
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1705
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1706
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x11

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1709
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1710
    nop

    .line 1711
    return-void

    .line 1709
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1710
    throw v1
.end method

.method public greylist-max-o showShutdownUi(ZLjava/lang/String;)V
    .locals 5
    .param p1, "isReboot"    # Z
    .param p2, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1999
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2001
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2002
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2003
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2004
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x26

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2007
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2008
    nop

    .line 2009
    return-void

    .line 2007
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2008
    throw v1
.end method

.method public blacklist showToast(ILjava/lang/String;Landroid/os/IBinder;Ljava/lang/CharSequence;Landroid/os/IBinder;ILandroid/app/ITransientNotificationCallback;I)V
    .locals 5
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "text"    # Ljava/lang/CharSequence;
    .param p5, "windowToken"    # Landroid/os/IBinder;
    .param p6, "duration"    # I
    .param p7, "callback"    # Landroid/app/ITransientNotificationCallback;
    .param p8, "displayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2244
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2246
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2247
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2248
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2249
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2250
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p4, :cond_0

    .line 2251
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2252
    invoke-static {p4, v0, v2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    goto :goto_0

    .line 2255
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2257
    :goto_0
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2258
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2259
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 2260
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeInt(I)V

    .line 2261
    iget-object v2, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x35

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2264
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2265
    nop

    .line 2266
    return-void

    .line 2264
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2265
    throw v1
.end method

.method public blacklist showTransient(I[IZ)V
    .locals 5
    .param p1, "displayId"    # I
    .param p2, "types"    # [I
    .param p3, "isGestureOnSystemBar"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2183
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2185
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2186
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2187
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 2188
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2189
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x31

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2192
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2193
    nop

    .line 2194
    return-void

    .line 2192
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2193
    throw v1
.end method

.method public greylist-max-o showWirelessChargingAnimation(I)V
    .locals 5
    .param p1, "batteryLevel"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1591
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1593
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1594
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1595
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1598
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1599
    nop

    .line 1600
    return-void

    .line 1598
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1599
    throw v1
.end method

.method public greylist-max-o startAssist(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1823
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1825
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1826
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1827
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x19

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1830
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1831
    nop

    .line 1832
    return-void

    .line 1830
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1831
    throw v1
.end method

.method public blacklist startTracing()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2284
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2286
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2287
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x37

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2290
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2291
    nop

    .line 2292
    return-void

    .line 2290
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2291
    throw v1
.end method

.method public blacklist stopTracing()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2296
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2298
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2299
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x38

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2302
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2303
    nop

    .line 2304
    return-void

    .line 2302
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2303
    throw v1
.end method

.method public blacklist suppressAmbientDisplay(Z)V
    .locals 5
    .param p1, "suppress"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2325
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2327
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2328
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2329
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x3a

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2332
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2333
    nop

    .line 2334
    return-void

    .line 2332
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2333
    throw v1
.end method

.method public greylist-max-o toggleKeyboardShortcutsMenu(I)V
    .locals 5
    .param p1, "deviceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1725
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1727
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1728
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1729
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x13

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1732
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1733
    nop

    .line 1734
    return-void

    .line 1732
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1733
    throw v1
.end method

.method public greylist-max-o togglePanel()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1580
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1582
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1583
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1586
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1587
    nop

    .line 1588
    return-void

    .line 1586
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1587
    throw v1
.end method

.method public greylist-max-o toggleRecentApps()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1658
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1660
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1661
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xd

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1664
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1665
    nop

    .line 1666
    return-void

    .line 1664
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1665
    throw v1
.end method

.method public greylist-max-o toggleSplitScreen()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1669
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1671
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1672
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xe

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1675
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1676
    nop

    .line 1677
    return-void

    .line 1675
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1676
    throw v1
.end method

.method public blacklist unregisterNearbyMediaDevicesProvider(Landroid/media/INearbyMediaDevicesProvider;)V
    .locals 5
    .param p1, "provider"    # Landroid/media/INearbyMediaDevicesProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2507
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2509
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2510
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 2511
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x45

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2514
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2515
    nop

    .line 2516
    return-void

    .line 2514
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2515
    throw v1
.end method

.method public blacklist updateMediaTapToTransferReceiverDisplay(ILandroid/media/MediaRoute2Info;Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;)V
    .locals 5
    .param p1, "displayState"    # I
    .param p2, "routeInfo"    # Landroid/media/MediaRoute2Info;
    .param p3, "appIcon"    # Landroid/graphics/drawable/Icon;
    .param p4, "appName"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2472
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2474
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2475
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2476
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2477
    invoke-virtual {v0, p3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2478
    const/4 v2, 0x1

    if-eqz p4, :cond_0

    .line 2479
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2480
    invoke-static {p4, v0, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    goto :goto_0

    .line 2483
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2485
    :goto_0
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x43

    const/4 v4, 0x0

    invoke-interface {v1, v3, v0, v4, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2488
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2489
    nop

    .line 2490
    return-void

    .line 2488
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2489
    throw v1
.end method

.method public blacklist updateMediaTapToTransferSenderDisplay(ILandroid/media/MediaRoute2Info;Lcom/android/internal/statusbar/IUndoMediaTransferCallback;)V
    .locals 5
    .param p1, "displayState"    # I
    .param p2, "routeInfo"    # Landroid/media/MediaRoute2Info;
    .param p3, "undoCallback"    # Lcom/android/internal/statusbar/IUndoMediaTransferCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2457
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2459
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2460
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2461
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2462
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 2463
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x42

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2466
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2467
    nop

    .line 2468
    return-void

    .line 2466
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2467
    throw v1
.end method
