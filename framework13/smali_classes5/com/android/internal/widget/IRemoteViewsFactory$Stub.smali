.class public abstract Lcom/android/internal/widget/IRemoteViewsFactory$Stub;
.super Landroid/os/Binder;
.source "IRemoteViewsFactory.java"

# interfaces
.implements Lcom/android/internal/widget/IRemoteViewsFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/IRemoteViewsFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/IRemoteViewsFactory$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "com.android.internal.widget.IRemoteViewsFactory"

.field static final greylist-max-o TRANSACTION_getCount:I = 0x4

.field static final greylist-max-o TRANSACTION_getItemId:I = 0x8

.field static final greylist-max-o TRANSACTION_getLoadingView:I = 0x6

.field static final greylist-max-o TRANSACTION_getViewAt:I = 0x5

.field static final greylist-max-o TRANSACTION_getViewTypeCount:I = 0x7

.field static final greylist-max-o TRANSACTION_hasStableIds:I = 0x9

.field static final greylist-max-o TRANSACTION_isCreated:I = 0xa

.field static final greylist-max-o TRANSACTION_onDataSetChanged:I = 0x1

.field static final greylist-max-o TRANSACTION_onDataSetChangedAsync:I = 0x2

.field static final greylist-max-o TRANSACTION_onDestroy:I = 0x3


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 58
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 59
    const-string v0, "com.android.internal.widget.IRemoteViewsFactory"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/widget/IRemoteViewsFactory$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public static greylist-max-r asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/IRemoteViewsFactory;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 67
    if-nez p0, :cond_0

    .line 68
    const/4 v0, 0x0

    return-object v0

    .line 70
    :cond_0
    const-string v0, "com.android.internal.widget.IRemoteViewsFactory"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 71
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/widget/IRemoteViewsFactory;

    if-eqz v1, :cond_1

    .line 72
    move-object v1, v0

    check-cast v1, Lcom/android/internal/widget/IRemoteViewsFactory;

    return-object v1

    .line 74
    :cond_1
    new-instance v1, Lcom/android/internal/widget/IRemoteViewsFactory$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/IRemoteViewsFactory$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 83
    packed-switch p0, :pswitch_data_0

    .line 127
    const/4 v0, 0x0

    return-object v0

    .line 123
    :pswitch_0
    const-string v0, "isCreated"

    return-object v0

    .line 119
    :pswitch_1
    const-string v0, "hasStableIds"

    return-object v0

    .line 115
    :pswitch_2
    const-string v0, "getItemId"

    return-object v0

    .line 111
    :pswitch_3
    const-string v0, "getViewTypeCount"

    return-object v0

    .line 107
    :pswitch_4
    const-string v0, "getLoadingView"

    return-object v0

    .line 103
    :pswitch_5
    const-string v0, "getViewAt"

    return-object v0

    .line 99
    :pswitch_6
    const-string v0, "getCount"

    return-object v0

    .line 95
    :pswitch_7
    const-string v0, "onDestroy"

    return-object v0

    .line 91
    :pswitch_8
    const-string v0, "onDataSetChangedAsync"

    return-object v0

    .line 87
    :pswitch_9
    const-string v0, "onDataSetChanged"

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

    .line 78
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 421
    const/16 v0, 0x9

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 134
    invoke-static {p1}, Lcom/android/internal/widget/IRemoteViewsFactory$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 138
    const-string v0, "com.android.internal.widget.IRemoteViewsFactory"

    .line 139
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 140
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 150
    packed-switch p1, :pswitch_data_1

    .line 228
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 146
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 147
    return v1

    .line 221
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/internal/widget/IRemoteViewsFactory$Stub;->isCreated()Z

    move-result v2

    .line 222
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 223
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 224
    goto :goto_0

    .line 214
    .end local v2    # "_result":Z
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/internal/widget/IRemoteViewsFactory$Stub;->hasStableIds()Z

    move-result v2

    .line 215
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 216
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 217
    goto :goto_0

    .line 205
    .end local v2    # "_result":Z
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 206
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 207
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/IRemoteViewsFactory$Stub;->getItemId(I)J

    move-result-wide v3

    .line 208
    .local v3, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 209
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 210
    goto :goto_0

    .line 197
    .end local v2    # "_arg0":I
    .end local v3    # "_result":J
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/internal/widget/IRemoteViewsFactory$Stub;->getViewTypeCount()I

    move-result v2

    .line 198
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 199
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 200
    goto :goto_0

    .line 190
    .end local v2    # "_result":I
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/internal/widget/IRemoteViewsFactory$Stub;->getLoadingView()Landroid/widget/RemoteViews;

    move-result-object v2

    .line 191
    .local v2, "_result":Landroid/widget/RemoteViews;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 192
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 193
    goto :goto_0

    .line 181
    .end local v2    # "_result":Landroid/widget/RemoteViews;
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 182
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 183
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/IRemoteViewsFactory$Stub;->getViewAt(I)Landroid/widget/RemoteViews;

    move-result-object v3

    .line 184
    .local v3, "_result":Landroid/widget/RemoteViews;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 185
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 186
    goto :goto_0

    .line 173
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Landroid/widget/RemoteViews;
    :pswitch_7
    invoke-virtual {p0}, Lcom/android/internal/widget/IRemoteViewsFactory$Stub;->getCount()I

    move-result v2

    .line 174
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 175
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 176
    goto :goto_0

    .line 166
    .end local v2    # "_result":I
    :pswitch_8
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 167
    .local v2, "_arg0":Landroid/content/Intent;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 168
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/IRemoteViewsFactory$Stub;->onDestroy(Landroid/content/Intent;)V

    .line 169
    goto :goto_0

    .line 160
    .end local v2    # "_arg0":Landroid/content/Intent;
    :pswitch_9
    invoke-virtual {p0}, Lcom/android/internal/widget/IRemoteViewsFactory$Stub;->onDataSetChangedAsync()V

    .line 161
    goto :goto_0

    .line 154
    :pswitch_a
    invoke-virtual {p0}, Lcom/android/internal/widget/IRemoteViewsFactory$Stub;->onDataSetChanged()V

    .line 155
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 156
    nop

    .line 231
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
