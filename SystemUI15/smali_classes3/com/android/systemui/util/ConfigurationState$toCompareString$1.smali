.class final Lcom/android/systemui/util/ConfigurationState$toCompareString$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation


# instance fields
.field final synthetic $config:Landroid/content/res/Configuration;

.field final synthetic this$0:Lcom/android/systemui/util/ConfigurationState;


# direct methods
.method public constructor <init>(Lcom/android/systemui/util/ConfigurationState;Landroid/content/res/Configuration;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/util/ConfigurationState$toCompareString$1;->this$0:Lcom/android/systemui/util/ConfigurationState;

    iput-object p2, p0, Lcom/android/systemui/util/ConfigurationState$toCompareString$1;->$config:Landroid/content/res/Configuration;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/android/systemui/util/ConfigurationState$ConfigurationField;)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/util/ConfigurationState$toCompareString$1;->this$0:Lcom/android/systemui/util/ConfigurationState;

    invoke-static {v0}, Lcom/android/systemui/util/ConfigurationState;->access$getFieldMap$p(Lcom/android/systemui/util/ConfigurationState;)Ljava/util/EnumMap;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/util/ConfigurationState$toCompareString$1;->$config:Landroid/content/res/Configuration;

    invoke-virtual {p1, v0, p0}, Lcom/android/systemui/util/ConfigurationState$ConfigurationField;->toCompareString(Ljava/util/EnumMap;Landroid/content/res/Configuration;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/ConfigurationState$toCompareString$1;->invoke(Lcom/android/systemui/util/ConfigurationState$ConfigurationField;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method
