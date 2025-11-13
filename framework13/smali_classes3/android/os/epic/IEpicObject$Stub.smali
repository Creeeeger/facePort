.class public abstract Landroid/os/epic/IEpicObject$Stub;
.super Landroid/os/Binder;
.source "IEpicObject.java"

# interfaces
.implements Landroid/os/epic/IEpicObject;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/epic/IEpicObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/epic/IEpicObject$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_acquire_lock:I = 0x1

.field static final blacklist TRANSACTION_acquire_lock_conditional:I = 0x5

.field static final blacklist TRANSACTION_acquire_lock_option:I = 0x3

.field static final blacklist TRANSACTION_acquire_lock_option_multi:I = 0x4

.field static final blacklist TRANSACTION_hint_release:I = 0x8

.field static final blacklist TRANSACTION_perf_hint:I = 0x7

.field static final blacklist TRANSACTION_release_lock:I = 0x2

.field static final blacklist TRANSACTION_release_lock_conditional:I = 0x6


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 54
    const-string v0, "android.os.epic.IEpicObject"

    invoke-virtual {p0, p0, v0}, Landroid/os/epic/IEpicObject$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/os/epic/IEpicObject;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 62
    if-nez p0, :cond_0

    .line 63
    const/4 v0, 0x0

    return-object v0

    .line 65
    :cond_0
    const-string v0, "android.os.epic.IEpicObject"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 66
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/epic/IEpicObject;

    if-eqz v1, :cond_1

    .line 67
    move-object v1, v0

    check-cast v1, Landroid/os/epic/IEpicObject;

    return-object v1

    .line 69
    :cond_1
    new-instance v1, Landroid/os/epic/IEpicObject$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/epic/IEpicObject$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 78
    packed-switch p0, :pswitch_data_0

    .line 114
    const/4 v0, 0x0

    return-object v0

    .line 110
    :pswitch_0
    const-string/jumbo v0, "hint_release"

    return-object v0

    .line 106
    :pswitch_1
    const-string/jumbo v0, "perf_hint"

    return-object v0

    .line 102
    :pswitch_2
    const-string/jumbo v0, "release_lock_conditional"

    return-object v0

    .line 98
    :pswitch_3
    const-string v0, "acquire_lock_conditional"

    return-object v0

    .line 94
    :pswitch_4
    const-string v0, "acquire_lock_option_multi"

    return-object v0

    .line 90
    :pswitch_5
    const-string v0, "acquire_lock_option"

    return-object v0

    .line 86
    :pswitch_6
    const-string/jumbo v0, "release_lock"

    return-object v0

    .line 82
    :pswitch_7
    const-string v0, "acquire_lock"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
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

    .line 73
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 395
    const/4 v0, 0x7

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 121
    invoke-static {p1}, Landroid/os/epic/IEpicObject$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 125
    const-string v0, "android.os.epic.IEpicObject"

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

    .line 219
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 133
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 134
    return v1

    .line 210
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 211
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 212
    invoke-virtual {p0, v2}, Landroid/os/epic/IEpicObject$Stub;->hint_release(Ljava/lang/String;)Z

    move-result v3

    .line 213
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 214
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 215
    goto/16 :goto_0

    .line 200
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 201
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 202
    invoke-virtual {p0, v2}, Landroid/os/epic/IEpicObject$Stub;->perf_hint(Ljava/lang/String;)Z

    move-result v3

    .line 203
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 204
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 205
    goto :goto_0

    .line 190
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 191
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 192
    invoke-virtual {p0, v2}, Landroid/os/epic/IEpicObject$Stub;->release_lock_conditional(Ljava/lang/String;)Z

    move-result v3

    .line 193
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 194
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 195
    goto :goto_0

    .line 180
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 181
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 182
    invoke-virtual {p0, v2}, Landroid/os/epic/IEpicObject$Stub;->acquire_lock_conditional(Ljava/lang/String;)Z

    move-result v3

    .line 183
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 184
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 185
    goto :goto_0

    .line 168
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 170
    .local v2, "_arg0":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 171
    .local v3, "_arg1":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 172
    invoke-virtual {p0, v2, v3}, Landroid/os/epic/IEpicObject$Stub;->acquire_lock_option_multi([I[I)Z

    move-result v4

    .line 173
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 174
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 175
    goto :goto_0

    .line 156
    .end local v2    # "_arg0":[I
    .end local v3    # "_arg1":[I
    .end local v4    # "_result":Z
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 158
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 159
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 160
    invoke-virtual {p0, v2, v3}, Landroid/os/epic/IEpicObject$Stub;->acquire_lock_option(II)Z

    move-result v4

    .line 161
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 162
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 163
    goto :goto_0

    .line 148
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_7
    invoke-virtual {p0}, Landroid/os/epic/IEpicObject$Stub;->release_lock()Z

    move-result v2

    .line 149
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 150
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 151
    goto :goto_0

    .line 141
    .end local v2    # "_result":Z
    :pswitch_8
    invoke-virtual {p0}, Landroid/os/epic/IEpicObject$Stub;->acquire_lock()Z

    move-result v2

    .line 142
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 143
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 144
    nop

    .line 222
    .end local v2    # "_result":Z
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
