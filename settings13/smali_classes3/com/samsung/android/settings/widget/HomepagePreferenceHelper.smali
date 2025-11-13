.class public Lcom/samsung/android/settings/widget/HomepagePreferenceHelper;
.super Ljava/lang/Object;
.source "HomepagePreferenceHelper.java"


# instance fields
.field private mOrder:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mPreference:Lcom/android/settings/widget/HomepagePreference;

.field private mVisible:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/settings/widget/HomepagePreference;)V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/widget/HomepagePreferenceHelper;->mVisible:Ljava/util/Optional;

    .line 14
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/widget/HomepagePreferenceHelper;->mOrder:Ljava/util/Optional;

    .line 17
    iput-object p1, p0, Lcom/samsung/android/settings/widget/HomepagePreferenceHelper;->mPreference:Lcom/android/settings/widget/HomepagePreference;

    return-void
.end method


# virtual methods
.method public getOrder()I
    .locals 1

    .line 35
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

.method public isVisible()Z
    .locals 1

    .line 26
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

.method public setOrder(I)V
    .locals 1

    .line 30
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/widget/HomepagePreferenceHelper;->mOrder:Ljava/util/Optional;

    .line 31
    iget-object p0, p0, Lcom/samsung/android/settings/widget/HomepagePreferenceHelper;->mPreference:Lcom/android/settings/widget/HomepagePreference;

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/HomepagePreference;->setOrder(I)V

    return-void
.end method

.method public setVisible(Z)V
    .locals 1

    .line 21
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/widget/HomepagePreferenceHelper;->mVisible:Ljava/util/Optional;

    .line 22
    iget-object p0, p0, Lcom/samsung/android/settings/widget/HomepagePreferenceHelper;->mPreference:Lcom/android/settings/widget/HomepagePreference;

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method
