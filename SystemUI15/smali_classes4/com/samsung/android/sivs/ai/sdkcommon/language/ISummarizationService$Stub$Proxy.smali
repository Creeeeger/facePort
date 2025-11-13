.class public final Lcom/samsung/android/sivs/ai/sdkcommon/language/ISummarizationService$Stub$Proxy;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/samsung/android/sivs/ai/sdkcommon/language/ISummarizationService;


# instance fields
.field public final mRemote:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sivs/ai/sdkcommon/language/ISummarizationService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sivs/ai/sdkcommon/language/ISummarizationService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method

.method public final summarizeWithHeader3(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sivs/ai/sdkcommon/language/ILlmServiceObserver2;Ljava/util/Map;)V
    .locals 5

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.samsung.android.sivs.ai.sdkcommon.language.ISummarizationService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, -0x1

    if-nez p1, :cond_0

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    new-instance v3, Lcom/samsung/android/sivs/ai/sdkcommon/language/ISummarizationService$Stub$Proxy$$ExternalSyntheticLambda0;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4}, Lcom/samsung/android/sivs/ai/sdkcommon/language/ISummarizationService$Stub$Proxy$$ExternalSyntheticLambda0;-><init>(Landroid/os/Parcel;I)V

    invoke-interface {p1, v3}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    if-nez p8, :cond_1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :cond_1
    invoke-interface {p8}, Ljava/util/Map;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    new-instance p1, Lcom/samsung/android/sivs/ai/sdkcommon/language/ISummarizationService$Stub$Proxy$$ExternalSyntheticLambda0;

    const/4 p2, 0x1

    invoke-direct {p1, v0, p2}, Lcom/samsung/android/sivs/ai/sdkcommon/language/ISummarizationService$Stub$Proxy$$ExternalSyntheticLambda0;-><init>(Landroid/os/Parcel;I)V

    invoke-interface {p8, p1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    :goto_1
    iget-object p0, p0, Lcom/samsung/android/sivs/ai/sdkcommon/language/ISummarizationService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x4

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :goto_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method
