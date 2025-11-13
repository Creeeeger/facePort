.class public final Lcom/samsung/android/settings/widget/SecRadioButtonGearPreferenceControllersHandler;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/settings/widget/SecRadioButtonGearPreferenceController$OnChangeListener;


# instance fields
.field public final mChildren:Ljava/util/List;

.field public mOnChangeListener:Lcom/samsung/android/settings/widget/SecRadioButtonGearPreferenceControllersHandler$OnChangeListener;

.field public mSelectedKey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreferenceControllersHandler;->mChildren:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreferenceControllersHandler;->mSelectedKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final updateStates(Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreferenceControllersHandler;->mChildren:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreferenceControllersHandler$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreferenceControllersHandler$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/widget/SecRadioButtonGearPreferenceControllersHandler;Z)V

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method
