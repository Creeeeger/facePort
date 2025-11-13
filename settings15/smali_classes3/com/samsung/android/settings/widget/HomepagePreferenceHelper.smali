.class public final Lcom/samsung/android/settings/widget/HomepagePreferenceHelper;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mOrder:Ljava/util/Optional;

.field public final mPreference:Lcom/android/settings/widget/HomepagePreference;

.field public mVisible:Ljava/util/Optional;


# direct methods
.method public constructor <init>(Lcom/android/settings/widget/HomepagePreference;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/widget/HomepagePreferenceHelper;->mVisible:Ljava/util/Optional;

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/widget/HomepagePreferenceHelper;->mOrder:Ljava/util/Optional;

    iput-object p1, p0, Lcom/samsung/android/settings/widget/HomepagePreferenceHelper;->mPreference:Lcom/android/settings/widget/HomepagePreference;

    return-void
.end method


# virtual methods
.method public final getOrder()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/widget/HomepagePreferenceHelper;->mOrder:Ljava/util/Optional;

    iget-object p0, p0, Lcom/samsung/android/settings/widget/HomepagePreferenceHelper;->mPreference:Lcom/android/settings/widget/HomepagePreference;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getOrder()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public final isVisible()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/widget/HomepagePreferenceHelper;->mVisible:Ljava/util/Optional;

    iget-object p0, p0, Lcom/samsung/android/settings/widget/HomepagePreferenceHelper;->mPreference:Lcom/android/settings/widget/HomepagePreference;

    invoke-virtual {p0}, Landroidx/preference/Preference;->isVisible()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method
