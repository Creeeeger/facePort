.class public final synthetic Lcom/samsung/android/settings/accessibility/dexterity/autoaction/CornerActionTypePickerFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/accessibility/dexterity/autoaction/CornerActionTypePickerFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/accessibility/dexterity/autoaction/CornerActionTypePickerFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/autoaction/CornerActionTypePickerFragment$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/accessibility/dexterity/autoaction/CornerActionTypePickerFragment;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/dexterity/autoaction/CornerActionTypePickerFragment$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/accessibility/dexterity/autoaction/CornerActionTypePickerFragment;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    sget v0, Lcom/samsung/android/settings/accessibility/dexterity/autoaction/CornerActionTypePickerFragment;->$r8$clinit:I

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    const v0, 0x7fffffff

    if-nez p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/preference/Preference;->getOrder()I

    move-result p1

    :goto_0
    invoke-virtual {p0, p2}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroidx/preference/Preference;->getOrder()I

    move-result v0

    :goto_1
    if-ge p1, v0, :cond_2

    const/4 p0, -0x1

    goto :goto_2

    :cond_2
    if-le p1, v0, :cond_3

    const/4 p0, 0x1

    goto :goto_2

    :cond_3
    const/4 p0, 0x0

    :goto_2
    return p0
.end method
