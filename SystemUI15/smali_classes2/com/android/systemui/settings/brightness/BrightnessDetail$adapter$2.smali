.class final Lcom/android/systemui/settings/brightness/BrightnessDetail$adapter$2;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic $factory:Lcom/android/systemui/settings/brightness/BrightnessController$Factory;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/settings/brightness/BrightnessController$Factory;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail$adapter$2;->$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail$adapter$2;->$factory:Lcom/android/systemui/settings/brightness/BrightnessController$Factory;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/android/systemui/settings/brightness/BrightnessDetailAdapter;

    iget-object v1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail$adapter$2;->$context:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail$adapter$2;->$factory:Lcom/android/systemui/settings/brightness/BrightnessController$Factory;

    invoke-direct {v0, v1, p0}, Lcom/android/systemui/settings/brightness/BrightnessDetailAdapter;-><init>(Landroid/content/Context;Lcom/android/systemui/settings/brightness/BrightnessController$Factory;)V

    return-object v0
.end method
