.class public final Lcom/samsung/android/lib/galaxyfinder/search/api/payload/IntentResultItemPayload;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/samsung/android/lib/galaxyfinder/search/api/payload/ResultItemPayload;


# instance fields
.field public final mIntent:Landroid/content/Intent;

.field public final mIntentAction:Ljava/lang/String;

.field public final mIntentClass:Ljava/lang/String;

.field public final mIntentDataUri:Ljava/lang/String;

.field public final mIntentFlags:I

.field public final mIntentPackage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/lib/galaxyfinder/search/api/payload/IntentResultItemPayload;->mIntent:Landroid/content/Intent;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/lib/galaxyfinder/search/api/payload/IntentResultItemPayload;->mIntentAction:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/lib/galaxyfinder/search/api/payload/IntentResultItemPayload;->mIntentPackage:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/lib/galaxyfinder/search/api/payload/IntentResultItemPayload;->mIntentClass:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/lib/galaxyfinder/search/api/payload/IntentResultItemPayload;->mIntentDataUri:Ljava/lang/String;

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/lib/galaxyfinder/search/api/payload/IntentResultItemPayload;->mIntentFlags:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/lib/galaxyfinder/search/api/payload/IntentResultItemPayload;->mIntentAction:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/lib/galaxyfinder/search/api/payload/IntentResultItemPayload;->mIntentPackage:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/lib/galaxyfinder/search/api/payload/IntentResultItemPayload;->mIntentClass:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/lib/galaxyfinder/search/api/payload/IntentResultItemPayload;->mIntentDataUri:Ljava/lang/String;

    iput p5, p0, Lcom/samsung/android/lib/galaxyfinder/search/api/payload/IntentResultItemPayload;->mIntentFlags:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/lib/galaxyfinder/search/api/payload/IntentResultItemPayload;->mIntent:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final getStringFromPayload()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "intent://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/lib/galaxyfinder/search/api/payload/IntentResultItemPayload;->mIntent:Landroid/content/Intent;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object p0

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-virtual {p0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v1

    invoke-virtual {p0}, Landroid/os/Parcel;->recycle()V

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/samsung/android/lib/galaxyfinder/search/api/payload/IntentResultItemPayload;->mIntentAction:Ljava/lang/String;

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/lib/galaxyfinder/search/api/payload/IntentResultItemPayload;->mIntentPackage:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/lib/galaxyfinder/search/api/payload/IntentResultItemPayload;->mIntentClass:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/lib/galaxyfinder/search/api/payload/IntentResultItemPayload;->mIntentDataUri:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    iget p0, p0, Lcom/samsung/android/lib/galaxyfinder/search/api/payload/IntentResultItemPayload;->mIntentFlags:I

    invoke-virtual {v1, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-virtual {v1}, Landroid/os/Parcel;->marshall()[B

    move-result-object p0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-static {p0, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
