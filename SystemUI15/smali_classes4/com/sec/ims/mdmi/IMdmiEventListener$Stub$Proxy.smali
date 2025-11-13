.class Lcom/sec/ims/mdmi/IMdmiEventListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/sec/ims/mdmi/IMdmiEventListener;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/ims/mdmi/IMdmiEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    iget-object p0, p0, Lcom/sec/ims/mdmi/IMdmiEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 0

    const-string p0, "com.sec.ims.mdmi.IMdmiEventListener"

    return-object p0
.end method

.method public onE911StatsUpdated(JJJJJDDD)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sec/ims/mdmi/IMdmiEventListener$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v1

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_0
    const-string v0, "com.sec.ims.mdmi.IMdmiEventListener"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    move-wide v3, p1

    invoke-virtual {v1, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    move-wide v3, p3

    invoke-virtual {v1, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    move-wide v3, p5

    invoke-virtual {v1, p5, p6}, Landroid/os/Parcel;->writeLong(J)V

    move-wide v3, p7

    invoke-virtual {v1, p7, p8}, Landroid/os/Parcel;->writeLong(J)V

    move-wide v3, p9

    invoke-virtual {v1, p9, p10}, Landroid/os/Parcel;->writeLong(J)V

    move-wide/from16 v3, p11

    invoke-virtual {v1, v3, v4}, Landroid/os/Parcel;->writeDouble(D)V

    move-wide/from16 v3, p13

    invoke-virtual {v1, v3, v4}, Landroid/os/Parcel;->writeDouble(D)V

    move-wide/from16 v3, p15

    invoke-virtual {v1, v3, v4}, Landroid/os/Parcel;->writeDouble(D)V

    move-object v0, p0

    iget-object v0, v0, Lcom/sec/ims/mdmi/IMdmiEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method
