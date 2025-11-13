.class public final Lcom/android/systemui/accessibility/SecureSettingsContentObserver$1;
.super Landroid/database/ContentObserver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/accessibility/SecureSettingsContentObserver;


# direct methods
.method public constructor <init>(Lcom/android/systemui/accessibility/SecureSettingsContentObserver;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/accessibility/SecureSettingsContentObserver$1;->this$0:Lcom/android/systemui/accessibility/SecureSettingsContentObserver;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/accessibility/SecureSettingsContentObserver$1;->this$0:Lcom/android/systemui/accessibility/SecureSettingsContentObserver;

    invoke-virtual {p0}, Lcom/android/systemui/accessibility/SecureSettingsContentObserver;->getSettingsValue()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/accessibility/SecureSettingsContentObserver;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/systemui/accessibility/SecureSettingsContentObserver;->mListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2, p1}, Lcom/android/systemui/accessibility/SecureSettingsContentObserver;->onValueChanged(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
