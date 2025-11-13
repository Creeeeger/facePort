.class public final Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesAppInfo;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final dependentPackageName:Ljava/lang/String;

.field public icon:Landroid/graphics/drawable/Drawable;

.field public final order:I

.field public final packageName:Ljava/lang/String;

.field public final summary:Ljava/lang/String;

.field public final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesAppInfo;->title:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesAppInfo;->summary:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesAppInfo;->icon:Landroid/graphics/drawable/Drawable;

    iput p4, p0, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesAppInfo;->order:I

    iput-object p5, p0, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesAppInfo;->packageName:Ljava/lang/String;

    iput-object p6, p0, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesAppInfo;->dependentPackageName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesAppInfo;

    iget v0, p0, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesAppInfo;->order:I

    iget v1, p1, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesAppInfo;->order:I

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesAppInfo;->title:Ljava/lang/String;

    iget-object p1, p1, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesAppInfo;->title:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    goto :goto_0

    :cond_0
    sub-int p0, v0, v1

    :goto_0
    return p0
.end method
