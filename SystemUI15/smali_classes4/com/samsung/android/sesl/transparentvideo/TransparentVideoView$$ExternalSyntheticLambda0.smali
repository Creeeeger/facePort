.class public final synthetic Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/content/res/AssetFileDescriptor;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/net/Uri;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Landroid/net/Uri;

    sget-object v0, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView;->DefaultConfig:Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$Configs;

    return-object p0

    :pswitch_0
    check-cast p0, Landroid/content/res/AssetFileDescriptor;

    sget-object v0, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView;->DefaultConfig:Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$Configs;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
