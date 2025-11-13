.class public abstract Landroid/app/backup/IMemorySaverBackupRestoreObserver$Stub;
.super Landroid/os/Binder;
.source "IMemorySaverBackupRestoreObserver.java"

# interfaces
.implements Landroid/app/backup/IMemorySaverBackupRestoreObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/backup/IMemorySaverBackupRestoreObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/backup/IMemorySaverBackupRestoreObserver$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onBackupCompleted:I = 0x2

.field static final blacklist TRANSACTION_onRestoreCompleted:I = 0x4

.field static final blacklist TRANSACTION_onRestoreStart:I = 0x3

.field static final blacklist TRANSACTION_onStartBackup:I = 0x1

.field static final blacklist TRANSACTION_onTimeout:I = 0x5


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 65
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 66
    const-string v0, "android.app.backup.IMemorySaverBackupRestoreObserver"

    invoke-virtual {p0, p0, v0}, Landroid/app/backup/IMemorySaverBackupRestoreObserver$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/app/backup/IMemorySaverBackupRestoreObserver;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 74
    if-nez p0, :cond_0

    .line 75
    const/4 v0, 0x0

    return-object v0

    .line 77
    :cond_0
    const-string v0, "android.app.backup.IMemorySaverBackupRestoreObserver"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 78
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/backup/IMemorySaverBackupRestoreObserver;

    if-eqz v1, :cond_1

    .line 79
    move-object v1, v0

    check-cast v1, Landroid/app/backup/IMemorySaverBackupRestoreObserver;

    return-object v1

    .line 81
    :cond_1
    new-instance v1, Landroid/app/backup/IMemorySaverBackupRestoreObserver$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/backup/IMemorySaverBackupRestoreObserver$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 90
    packed-switch p0, :pswitch_data_0

    .line 114
    const/4 v0, 0x0

    return-object v0

    .line 110
    :pswitch_0
    const-string/jumbo v0, "onTimeout"

    return-object v0

    .line 106
    :pswitch_1
    const-string/jumbo v0, "onRestoreCompleted"

    return-object v0

    .line 102
    :pswitch_2
    const-string/jumbo v0, "onRestoreStart"

    return-object v0

    .line 98
    :pswitch_3
    const-string/jumbo v0, "onBackupCompleted"

    return-object v0

    .line 94
    :pswitch_4
    const-string/jumbo v0, "onStartBackup"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 85
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 295
    const/4 v0, 0x4

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 121
    invoke-static {p1}, Landroid/app/backup/IMemorySaverBackupRestoreObserver$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 125
    const-string v0, "android.app.backup.IMemorySaverBackupRestoreObserver"

    .line 126
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 127
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 137
    packed-switch p1, :pswitch_data_1

    .line 182
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 133
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 134
    return v1

    .line 177
    :pswitch_1
    invoke-virtual {p0}, Landroid/app/backup/IMemorySaverBackupRestoreObserver$Stub;->onTimeout()V

    .line 178
    goto :goto_0

    .line 168
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 170
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 171
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 172
    invoke-virtual {p0, v2, v3}, Landroid/app/backup/IMemorySaverBackupRestoreObserver$Stub;->onRestoreCompleted(Ljava/lang/String;Z)V

    .line 173
    goto :goto_0

    .line 160
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Z
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 161
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 162
    invoke-virtual {p0, v2}, Landroid/app/backup/IMemorySaverBackupRestoreObserver$Stub;->onRestoreStart(Ljava/lang/String;)V

    .line 163
    goto :goto_0

    .line 150
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 152
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 153
    .restart local v3    # "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 154
    invoke-virtual {p0, v2, v3}, Landroid/app/backup/IMemorySaverBackupRestoreObserver$Stub;->onBackupCompleted(Ljava/lang/String;Z)V

    .line 155
    goto :goto_0

    .line 142
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Z
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 143
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 144
    invoke-virtual {p0, v2}, Landroid/app/backup/IMemorySaverBackupRestoreObserver$Stub;->onStartBackup(Ljava/lang/String;)V

    .line 145
    nop

    .line 185
    .end local v2    # "_arg0":Ljava/lang/String;
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
