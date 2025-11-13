.class public final Lcom/android/systemui/recordissue/IrsStrings;
.super Lcom/android/systemui/screenrecord/RecordingServiceStrings;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final res:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/screenrecord/RecordingServiceStrings;-><init>(Landroid/content/res/Resources;)V

    iput-object p1, p0, Lcom/android/systemui/recordissue/IrsStrings;->res:Landroid/content/res/Resources;

    return-void
.end method


# virtual methods
.method public final getBackgroundProcessingLabel()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/recordissue/IrsStrings;->res:Landroid/content/res/Resources;

    const v0, 0x7f1307bb

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getOngoingRecording()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/recordissue/IrsStrings;->res:Landroid/content/res/Resources;

    const v0, 0x7f1307bd

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getSaveTitle()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/recordissue/IrsStrings;->res:Landroid/content/res/Resources;

    const v0, 0x7f1307c0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getStartError()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/recordissue/IrsStrings;->res:Landroid/content/res/Resources;

    const v0, 0x7f1307c2

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/recordissue/IrsStrings;->res:Landroid/content/res/Resources;

    const v0, 0x7f1307c3

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
