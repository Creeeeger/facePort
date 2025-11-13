.class public final Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils$IntentData;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field intentUri:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "intentUri"
    .end annotation
.end field

.field type:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "type"
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils$IntentData;->type:I

    iput-object p2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils$IntentData;->intentUri:Ljava/lang/String;

    return-void
.end method
