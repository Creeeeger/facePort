.class public abstract Landroid/sec/clipboard/IClipboardService$Stub;
.super Landroid/os/Binder;
.source "IClipboardService.java"

# interfaces
.implements Landroid/sec/clipboard/IClipboardService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/sec/clipboard/IClipboardService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/sec/clipboard/IClipboardService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_addClipboardEventListener:I = 0x3

.field static final blacklist TRANSACTION_getFilter:I = 0x2

.field static final blacklist TRANSACTION_getPrimarySemClip:I = 0x7

.field static final blacklist TRANSACTION_hasPrimaryClip:I = 0x8

.field static final blacklist TRANSACTION_isEnabled:I = 0xa

.field static final blacklist TRANSACTION_pasteClipData:I = 0x9

.field static final blacklist TRANSACTION_removeClipboardEventListener:I = 0x4

.field static final blacklist TRANSACTION_setPrimaryClip:I = 0x5

.field static final blacklist TRANSACTION_setPrimarySemClip:I = 0x6

.field static final blacklist TRANSACTION_updateFilter:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 58
    const-string v0, "android.sec.clipboard.IClipboardService"

    invoke-virtual {p0, p0, v0}, Landroid/sec/clipboard/IClipboardService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/sec/clipboard/IClipboardService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 66
    if-nez p0, :cond_0

    .line 67
    const/4 v0, 0x0

    return-object v0

    .line 69
    :cond_0
    const-string v0, "android.sec.clipboard.IClipboardService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 70
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/sec/clipboard/IClipboardService;

    if-eqz v1, :cond_1

    .line 71
    move-object v1, v0

    check-cast v1, Landroid/sec/clipboard/IClipboardService;

    return-object v1

    .line 73
    :cond_1
    new-instance v1, Landroid/sec/clipboard/IClipboardService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/sec/clipboard/IClipboardService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 82
    packed-switch p0, :pswitch_data_0

    .line 126
    const/4 v0, 0x0

    return-object v0

    .line 122
    :pswitch_0
    const-string/jumbo v0, "isEnabled"

    return-object v0

    .line 118
    :pswitch_1
    const-string/jumbo v0, "pasteClipData"

    return-object v0

    .line 114
    :pswitch_2
    const-string/jumbo v0, "hasPrimaryClip"

    return-object v0

    .line 110
    :pswitch_3
    const-string/jumbo v0, "getPrimarySemClip"

    return-object v0

    .line 106
    :pswitch_4
    const-string/jumbo v0, "setPrimarySemClip"

    return-object v0

    .line 102
    :pswitch_5
    const-string/jumbo v0, "setPrimaryClip"

    return-object v0

    .line 98
    :pswitch_6
    const-string/jumbo v0, "removeClipboardEventListener"

    return-object v0

    .line 94
    :pswitch_7
    const-string v0, "addClipboardEventListener"

    return-object v0

    .line 90
    :pswitch_8
    const-string v0, "getFilter"

    return-object v0

    .line 86
    :pswitch_9
    const-string/jumbo v0, "updateFilter"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
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

    .line 77
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 471
    const/16 v0, 0x9

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 133
    invoke-static {p1}, Landroid/sec/clipboard/IClipboardService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 137
    const-string v0, "android.sec.clipboard.IClipboardService"

    .line 138
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 139
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 149
    packed-switch p1, :pswitch_data_1

    .line 263
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 145
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 146
    return v1

    .line 254
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 255
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 256
    invoke-virtual {p0, v2}, Landroid/sec/clipboard/IClipboardService$Stub;->isEnabled(I)Z

    move-result v3

    .line 257
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 258
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 259
    goto/16 :goto_0

    .line 240
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_2
    sget-object v2, Landroid/content/ClipData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ClipData;

    .line 242
    .local v2, "_arg0":Landroid/content/ClipData;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 244
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 245
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 246
    invoke-virtual {p0, v2, v3, v4}, Landroid/sec/clipboard/IClipboardService$Stub;->pasteClipData(Landroid/content/ClipData;Ljava/lang/String;I)Z

    move-result v5

    .line 247
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 248
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 249
    goto/16 :goto_0

    .line 228
    .end local v2    # "_arg0":Landroid/content/ClipData;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":I
    .end local v5    # "_result":Z
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 230
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 231
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 232
    invoke-virtual {p0, v2, v3}, Landroid/sec/clipboard/IClipboardService$Stub;->hasPrimaryClip(Ljava/lang/String;I)Z

    move-result v4

    .line 233
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 234
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 235
    goto/16 :goto_0

    .line 216
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 218
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 219
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 220
    invoke-virtual {p0, v2, v3}, Landroid/sec/clipboard/IClipboardService$Stub;->getPrimarySemClip(Ljava/lang/String;I)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v4

    .line 221
    .local v4, "_result":Lcom/samsung/android/content/clipboard/data/SemClipData;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 222
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 223
    goto/16 :goto_0

    .line 203
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Lcom/samsung/android/content/clipboard/data/SemClipData;
    :pswitch_5
    sget-object v2, Lcom/samsung/android/content/clipboard/data/SemClipData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/content/clipboard/data/SemClipData;

    .line 205
    .local v2, "_arg0":Lcom/samsung/android/content/clipboard/data/SemClipData;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 207
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 208
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 209
    invoke-virtual {p0, v2, v3, v4}, Landroid/sec/clipboard/IClipboardService$Stub;->setPrimarySemClip(Lcom/samsung/android/content/clipboard/data/SemClipData;Ljava/lang/String;I)V

    .line 210
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 211
    goto :goto_0

    .line 192
    .end local v2    # "_arg0":Lcom/samsung/android/content/clipboard/data/SemClipData;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":I
    :pswitch_6
    sget-object v2, Landroid/content/ClipData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ClipData;

    .line 194
    .local v2, "_arg0":Landroid/content/ClipData;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 195
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 196
    invoke-virtual {p0, v2, v3}, Landroid/sec/clipboard/IClipboardService$Stub;->setPrimaryClip(Landroid/content/ClipData;I)V

    .line 197
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 198
    goto :goto_0

    .line 183
    .end local v2    # "_arg0":Landroid/content/ClipData;
    .end local v3    # "_arg1":I
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/content/clipboard/IOnClipboardEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/content/clipboard/IOnClipboardEventListener;

    move-result-object v2

    .line 184
    .local v2, "_arg0":Lcom/samsung/android/content/clipboard/IOnClipboardEventListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 185
    invoke-virtual {p0, v2}, Landroid/sec/clipboard/IClipboardService$Stub;->removeClipboardEventListener(Lcom/samsung/android/content/clipboard/IOnClipboardEventListener;)V

    .line 186
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 187
    goto :goto_0

    .line 172
    .end local v2    # "_arg0":Lcom/samsung/android/content/clipboard/IOnClipboardEventListener;
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/content/clipboard/IOnClipboardEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/content/clipboard/IOnClipboardEventListener;

    move-result-object v2

    .line 174
    .restart local v2    # "_arg0":Lcom/samsung/android/content/clipboard/IOnClipboardEventListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 175
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 176
    invoke-virtual {p0, v2, v3}, Landroid/sec/clipboard/IClipboardService$Stub;->addClipboardEventListener(Lcom/samsung/android/content/clipboard/IOnClipboardEventListener;Ljava/lang/String;)V

    .line 177
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 178
    goto :goto_0

    .line 164
    .end local v2    # "_arg0":Lcom/samsung/android/content/clipboard/IOnClipboardEventListener;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_9
    invoke-virtual {p0}, Landroid/sec/clipboard/IClipboardService$Stub;->getFilter()I

    move-result v2

    .line 165
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 166
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 167
    goto :goto_0

    .line 154
    .end local v2    # "_result":I
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 156
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/sec/clipboard/IClipboardDataPasteEvent$Stub;->asInterface(Landroid/os/IBinder;)Landroid/sec/clipboard/IClipboardDataPasteEvent;

    move-result-object v3

    .line 157
    .local v3, "_arg1":Landroid/sec/clipboard/IClipboardDataPasteEvent;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 158
    invoke-virtual {p0, v2, v3}, Landroid/sec/clipboard/IClipboardService$Stub;->updateFilter(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V

    .line 159
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 160
    nop

    .line 266
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/sec/clipboard/IClipboardDataPasteEvent;
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
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
