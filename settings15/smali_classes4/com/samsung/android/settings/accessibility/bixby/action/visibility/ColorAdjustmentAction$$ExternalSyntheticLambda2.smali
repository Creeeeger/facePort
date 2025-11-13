.class public final synthetic Lcom/samsung/android/settings/accessibility/bixby/action/visibility/ColorAdjustmentAction$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/IntPredicate;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/accessibility/bixby/action/visibility/ColorAdjustmentAction;

.field public final synthetic f$1:Lcom/samsung/android/settings/accessibility/bixby/data/ParsedBundle;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/accessibility/bixby/action/visibility/ColorAdjustmentAction;Lcom/samsung/android/settings/accessibility/bixby/data/ParsedBundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/bixby/action/visibility/ColorAdjustmentAction$$ExternalSyntheticLambda2;->f$0:Lcom/samsung/android/settings/accessibility/bixby/action/visibility/ColorAdjustmentAction;

    iput-object p2, p0, Lcom/samsung/android/settings/accessibility/bixby/action/visibility/ColorAdjustmentAction$$ExternalSyntheticLambda2;->f$1:Lcom/samsung/android/settings/accessibility/bixby/data/ParsedBundle;

    return-void
.end method


# virtual methods
.method public final test(I)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/bixby/action/visibility/ColorAdjustmentAction$$ExternalSyntheticLambda2;->f$0:Lcom/samsung/android/settings/accessibility/bixby/action/visibility/ColorAdjustmentAction;

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/bixby/action/visibility/ColorAdjustmentAction$$ExternalSyntheticLambda2;->f$1:Lcom/samsung/android/settings/accessibility/bixby/data/ParsedBundle;

    iget-object v0, v0, Lcom/samsung/android/settings/accessibility/bixby/action/visibility/ColorAdjustmentAction;->COLOR_ADUSTMENT_OPTION:[Ljava/lang/String;

    aget-object p1, v0, p1

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/bixby/data/ParsedBundle;->menuValue:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
