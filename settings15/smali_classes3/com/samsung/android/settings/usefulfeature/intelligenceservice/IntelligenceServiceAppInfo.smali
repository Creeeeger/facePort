.class public final Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceAppInfo;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final icon:Landroid/graphics/drawable/Drawable;

.field public final key:Ljava/lang/String;

.field public final offlineAIFeatures:[Ljava/lang/String;

.field public final onlineAIFeatures:[Ljava/lang/String;

.field public final order:I

.field public summary:Ljava/lang/String;

.field public final supportedMode:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceAppInfo;->key:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceAppInfo;->title:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceAppInfo;->summary:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceAppInfo;->icon:Landroid/graphics/drawable/Drawable;

    iput p5, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceAppInfo;->order:I

    iput-object p6, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceAppInfo;->supportedMode:Ljava/lang/String;

    iput-object p7, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceAppInfo;->onlineAIFeatures:[Ljava/lang/String;

    iput-object p8, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceAppInfo;->offlineAIFeatures:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceAppInfo;

    iget v0, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceAppInfo;->order:I

    iget v1, p1, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceAppInfo;->order:I

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceAppInfo;->title:Ljava/lang/String;

    iget-object p1, p1, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceAppInfo;->title:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    goto :goto_0

    :cond_0
    sub-int p0, v0, v1

    :goto_0
    return p0
.end method
