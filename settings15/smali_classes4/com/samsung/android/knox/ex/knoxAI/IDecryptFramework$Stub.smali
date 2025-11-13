.class public abstract Lcom/samsung/android/knox/ex/knoxAI/IDecryptFramework$Stub;
.super Landroid/os/Binder;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/knox/ex/knoxAI/IDecryptFramework;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/ex/knoxAI/IDecryptFramework;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/ex/knoxAI/IDecryptFramework$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final TRANSACTION_close:I = 0x6

.field public static final TRANSACTION_createKnoxAiSession:I = 0x1

.field public static final TRANSACTION_destroyKnoxAiSession:I = 0x2

.field public static final TRANSACTION_execute:I = 0x5

.field public static final TRANSACTION_getKeyProvisioning:I = 0x7

.field public static final TRANSACTION_getModelInputShape:I = 0x3

.field public static final TRANSACTION_open:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.samsung.android.knox.ex.knoxAI.IDecryptFramework"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ex/knoxAI/IDecryptFramework;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.samsung.android.knox.ex.knoxAI.IDecryptFramework"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/knox/ex/knoxAI/IDecryptFramework;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/samsung/android/knox/ex/knoxAI/IDecryptFramework;

    return-object v0

    :cond_1
    new-instance v0, Lcom/samsung/android/knox/ex/knoxAI/IDecryptFramework$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/samsung/android/knox/ex/knoxAI/IDecryptFramework$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "com.samsung.android.knox.ex.knoxAI.IDecryptFramework"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :cond_1
    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/knox/ex/knoxAI/IKeyProvisioningCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ex/knoxAI/IKeyProvisioningCallback;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/ex/knoxAI/IDecryptFramework;->getKeyProvisioning(Lcom/samsung/android/knox/ex/knoxAI/IKeyProvisioningCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, v2, v3}, Lcom/samsung/android/knox/ex/knoxAI/IDecryptFramework;->close(J)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    sget-object p1, Lcom/samsung/android/knox/ex/knoxAI/DataBuffer;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p4

    check-cast p4, [Lcom/samsung/android/knox/ex/knoxAI/DataBuffer;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/samsung/android/knox/ex/knoxAI/DataBuffer;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, v2, v3, p4, p1}, Lcom/samsung/android/knox/ex/knoxAI/IDecryptFramework;->execute(J[Lcom/samsung/android/knox/ex/knoxAI/DataBuffer;[Lcom/samsung/android/knox/ex/knoxAI/DataBuffer;)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto :goto_1

    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    sget-object p1, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, v2, v3, p1}, Lcom/samsung/android/knox/ex/knoxAI/IDecryptFramework;->open(JLcom/samsung/android/knox/ex/knoxAI/KfaOptions;)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-gez p4, :cond_2

    const/4 p4, 0x0

    goto :goto_0

    :cond_2
    new-array p4, p4, [I

    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, v2, v3, p1, p4}, Lcom/samsung/android/knox/ex/knoxAI/IDecryptFramework;->getModelInputShape(JI[I)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p3, p4}, Landroid/os/Parcel;->writeIntArray([I)V

    goto :goto_1

    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, v2, v3}, Lcom/samsung/android/knox/ex/knoxAI/IDecryptFramework;->destroyKnoxAiSession(J)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/knox/ex/knoxAI/IDeathNotifier$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ex/knoxAI/IDeathNotifier;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/ex/knoxAI/IDecryptFramework;->createKnoxAiSession(Lcom/samsung/android/knox/ex/knoxAI/IDeathNotifier;)J

    move-result-wide p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0, p1}, Landroid/os/Parcel;->writeLong(J)V

    :goto_1
    return v1

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
