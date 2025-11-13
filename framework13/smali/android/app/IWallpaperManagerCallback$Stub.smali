.class public abstract Landroid/app/IWallpaperManagerCallback$Stub;
.super Landroid/os/Binder;
.source "IWallpaperManagerCallback.java"

# interfaces
.implements Landroid/app/IWallpaperManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IWallpaperManagerCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IWallpaperManagerCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.app.IWallpaperManagerCallback"

.field static final blacklist TRANSACTION_onSemBackupStatusChanged:I = 0x5

.field static final blacklist TRANSACTION_onSemMultipackApplied:I = 0x7

.field static final blacklist TRANSACTION_onSemWallpaperChanged:I = 0x6

.field static final blacklist TRANSACTION_onSemWallpaperColorsAnalysisRequested:I = 0x4

.field static final blacklist TRANSACTION_onSemWallpaperColorsChanged:I = 0x3

.field static final greylist-max-o TRANSACTION_onWallpaperChanged:I = 0x1

.field static final greylist-max-o TRANSACTION_onWallpaperColorsChanged:I = 0x2


# direct methods
.method public constructor greylist <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 53
    const-string v0, "android.app.IWallpaperManagerCallback"

    invoke-virtual {p0, p0, v0}, Landroid/app/IWallpaperManagerCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManagerCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 61
    if-nez p0, :cond_0

    .line 62
    const/4 v0, 0x0

    return-object v0

    .line 64
    :cond_0
    const-string v0, "android.app.IWallpaperManagerCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 65
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/IWallpaperManagerCallback;

    if-eqz v1, :cond_1

    .line 66
    move-object v1, v0

    check-cast v1, Landroid/app/IWallpaperManagerCallback;

    return-object v1

    .line 68
    :cond_1
    new-instance v1, Landroid/app/IWallpaperManagerCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/IWallpaperManagerCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 77
    packed-switch p0, :pswitch_data_0

    .line 109
    const/4 v0, 0x0

    return-object v0

    .line 105
    :pswitch_0
    const-string/jumbo v0, "onSemMultipackApplied"

    return-object v0

    .line 101
    :pswitch_1
    const-string/jumbo v0, "onSemWallpaperChanged"

    return-object v0

    .line 97
    :pswitch_2
    const-string/jumbo v0, "onSemBackupStatusChanged"

    return-object v0

    .line 93
    :pswitch_3
    const-string/jumbo v0, "onSemWallpaperColorsAnalysisRequested"

    return-object v0

    .line 89
    :pswitch_4
    const-string/jumbo v0, "onSemWallpaperColorsChanged"

    return-object v0

    .line 85
    :pswitch_5
    const-string/jumbo v0, "onWallpaperColorsChanged"

    return-object v0

    .line 81
    :pswitch_6
    const-string/jumbo v0, "onWallpaperChanged"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
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

    .line 72
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 331
    const/4 v0, 0x6

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 116
    invoke-static {p1}, Landroid/app/IWallpaperManagerCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 120
    const-string v0, "android.app.IWallpaperManagerCallback"

    .line 121
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 122
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 132
    packed-switch p1, :pswitch_data_1

    .line 205
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 128
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 129
    return v1

    .line 198
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 199
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 200
    invoke-virtual {p0, v2}, Landroid/app/IWallpaperManagerCallback$Stub;->onSemMultipackApplied(I)V

    .line 201
    goto :goto_0

    .line 188
    .end local v2    # "_arg0":I
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 190
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 191
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 192
    invoke-virtual {p0, v2, v3}, Landroid/app/IWallpaperManagerCallback$Stub;->onSemWallpaperChanged(II)V

    .line 193
    goto :goto_0

    .line 176
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 178
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 180
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 181
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 182
    invoke-virtual {p0, v2, v3, v4}, Landroid/app/IWallpaperManagerCallback$Stub;->onSemBackupStatusChanged(III)V

    .line 183
    goto :goto_0

    .line 166
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 168
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 169
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 170
    invoke-virtual {p0, v2, v3}, Landroid/app/IWallpaperManagerCallback$Stub;->onSemWallpaperColorsAnalysisRequested(II)V

    .line 171
    goto :goto_0

    .line 154
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_5
    sget-object v2, Landroid/app/SemWallpaperColors;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/SemWallpaperColors;

    .line 156
    .local v2, "_arg0":Landroid/app/SemWallpaperColors;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 158
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 159
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 160
    invoke-virtual {p0, v2, v3, v4}, Landroid/app/IWallpaperManagerCallback$Stub;->onSemWallpaperColorsChanged(Landroid/app/SemWallpaperColors;II)V

    .line 161
    goto :goto_0

    .line 142
    .end local v2    # "_arg0":Landroid/app/SemWallpaperColors;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    :pswitch_6
    sget-object v2, Landroid/app/WallpaperColors;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/WallpaperColors;

    .line 144
    .local v2, "_arg0":Landroid/app/WallpaperColors;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 146
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 147
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 148
    invoke-virtual {p0, v2, v3, v4}, Landroid/app/IWallpaperManagerCallback$Stub;->onWallpaperColorsChanged(Landroid/app/WallpaperColors;II)V

    .line 149
    goto :goto_0

    .line 136
    .end local v2    # "_arg0":Landroid/app/WallpaperColors;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    :pswitch_7
    invoke-virtual {p0}, Landroid/app/IWallpaperManagerCallback$Stub;->onWallpaperChanged()V

    .line 137
    nop

    .line 208
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
