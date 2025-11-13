.class public Lcom/android/systemui/screenrecord/RecordingServiceStrings;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final res:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/screenrecord/RecordingServiceStrings;->res:Landroid/content/res/Resources;

    return-void
.end method


# virtual methods
.method public getBackgroundProcessingLabel()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/screenrecord/RecordingServiceStrings;->res:Landroid/content/res/Resources;

    const v0, 0x7f130fe2

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getOngoingRecording()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/screenrecord/RecordingServiceStrings;->res:Landroid/content/res/Resources;

    const v0, 0x7f130fea

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSaveTitle()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/screenrecord/RecordingServiceStrings;->res:Landroid/content/res/Resources;

    const v0, 0x7f130ff1

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getStartError()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/screenrecord/RecordingServiceStrings;->res:Landroid/content/res/Resources;

    const v0, 0x7f130ff3

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/screenrecord/RecordingServiceStrings;->res:Landroid/content/res/Resources;

    const v0, 0x7f130ffa

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
