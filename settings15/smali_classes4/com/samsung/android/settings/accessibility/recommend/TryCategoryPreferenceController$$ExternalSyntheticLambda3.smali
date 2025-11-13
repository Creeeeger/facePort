.class public final synthetic Lcom/samsung/android/settings/accessibility/recommend/TryCategoryPreferenceController$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/accessibility/recommend/TryCategoryPreferenceController;

.field public final synthetic f$1:Lcom/samsung/android/settings/accessibility/recommend/tryitem/TryItem;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/accessibility/recommend/TryCategoryPreferenceController;Lcom/samsung/android/settings/accessibility/recommend/tryitem/TryItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/recommend/TryCategoryPreferenceController$$ExternalSyntheticLambda3;->f$0:Lcom/samsung/android/settings/accessibility/recommend/TryCategoryPreferenceController;

    iput-object p2, p0, Lcom/samsung/android/settings/accessibility/recommend/TryCategoryPreferenceController$$ExternalSyntheticLambda3;->f$1:Lcom/samsung/android/settings/accessibility/recommend/tryitem/TryItem;

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/recommend/TryCategoryPreferenceController$$ExternalSyntheticLambda3;->f$0:Lcom/samsung/android/settings/accessibility/recommend/TryCategoryPreferenceController;

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/recommend/TryCategoryPreferenceController$$ExternalSyntheticLambda3;->f$1:Lcom/samsung/android/settings/accessibility/recommend/tryitem/TryItem;

    invoke-static {v0, p0, p1}, Lcom/samsung/android/settings/accessibility/recommend/TryCategoryPreferenceController;->$r8$lambda$DE1mIpd3qiKKOO74Tjm60Qa0axo(Lcom/samsung/android/settings/accessibility/recommend/TryCategoryPreferenceController;Lcom/samsung/android/settings/accessibility/recommend/tryitem/TryItem;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method
