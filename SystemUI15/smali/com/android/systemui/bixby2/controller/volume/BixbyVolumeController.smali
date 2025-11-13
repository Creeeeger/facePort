.class public final Lcom/android/systemui/bixby2/controller/volume/BixbyVolumeController;
.super Lcom/android/systemui/bixby2/controller/volume/VolumeType;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final $stable:I


# instance fields
.field private final streamTypeToString:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/volume/VolumeType;-><init>()V

    const-string v0, "Bixby"

    iput-object v0, p0, Lcom/android/systemui/bixby2/controller/volume/BixbyVolumeController;->streamTypeToString:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getStreamType()I
    .locals 0

    const/16 p0, 0xb

    return p0
.end method

.method public getStreamTypeToString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/volume/BixbyVolumeController;->streamTypeToString:Ljava/lang/String;

    return-object p0
.end method
