.class public final synthetic Lcom/samsung/android/sivs/ai/sdkcommon/language/ISmartReplyService$Stub$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroid/os/Parcel;

.field public final synthetic f$1:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Landroid/os/Parcel;Ljava/util/Map;I)V
    .locals 0

    iput p3, p0, Lcom/samsung/android/sivs/ai/sdkcommon/language/ISmartReplyService$Stub$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/sivs/ai/sdkcommon/language/ISmartReplyService$Stub$$ExternalSyntheticLambda0;->f$0:Landroid/os/Parcel;

    iput-object p2, p0, Lcom/samsung/android/sivs/ai/sdkcommon/language/ISmartReplyService$Stub$$ExternalSyntheticLambda0;->f$1:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 1

    iget p1, p0, Lcom/samsung/android/sivs/ai/sdkcommon/language/ISmartReplyService$Stub$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lcom/samsung/android/sivs/ai/sdkcommon/language/ISmartReplyService$Stub$$ExternalSyntheticLambda0;->f$0:Landroid/os/Parcel;

    iget-object p0, p0, Lcom/samsung/android/sivs/ai/sdkcommon/language/ISmartReplyService$Stub$$ExternalSyntheticLambda0;->f$1:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_0
    iget-object p1, p0, Lcom/samsung/android/sivs/ai/sdkcommon/language/ISmartReplyService$Stub$$ExternalSyntheticLambda0;->f$0:Landroid/os/Parcel;

    iget-object p0, p0, Lcom/samsung/android/sivs/ai/sdkcommon/language/ISmartReplyService$Stub$$ExternalSyntheticLambda0;->f$1:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_1
    iget-object p1, p0, Lcom/samsung/android/sivs/ai/sdkcommon/language/ISmartReplyService$Stub$$ExternalSyntheticLambda0;->f$0:Landroid/os/Parcel;

    iget-object p0, p0, Lcom/samsung/android/sivs/ai/sdkcommon/language/ISmartReplyService$Stub$$ExternalSyntheticLambda0;->f$1:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_2
    iget-object p1, p0, Lcom/samsung/android/sivs/ai/sdkcommon/language/ISmartReplyService$Stub$$ExternalSyntheticLambda0;->f$0:Landroid/os/Parcel;

    iget-object p0, p0, Lcom/samsung/android/sivs/ai/sdkcommon/language/ISmartReplyService$Stub$$ExternalSyntheticLambda0;->f$1:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
