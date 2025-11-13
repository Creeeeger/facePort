.class public Lcom/android/settings/RestrictedListPreference$RestrictedListPreferenceDialogFragment;
.super Lcom/android/settings/CustomListPreference$CustomListPreferenceDialogFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/RestrictedListPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RestrictedListPreferenceDialogFragment"
.end annotation


# instance fields
.field public mLastCheckedPosition:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/CustomListPreference$CustomListPreferenceDialogFragment;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/RestrictedListPreference$RestrictedListPreferenceDialogFragment;->mLastCheckedPosition:I

    return-void
.end method


# virtual methods
.method public final getOnItemClickListener()Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    new-instance v0, Lcom/android/settings/RestrictedListPreference$RestrictedListPreferenceDialogFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/RestrictedListPreference$RestrictedListPreferenceDialogFragment$1;-><init>(Lcom/android/settings/RestrictedListPreference$RestrictedListPreferenceDialogFragment;)V

    return-object v0
.end method

.method public final setClickedDialogEntryIndex(I)V
    .locals 0

    iput p1, p0, Lcom/android/settings/CustomListPreference$CustomListPreferenceDialogFragment;->mClickedDialogEntryIndex:I

    iput p1, p0, Lcom/android/settings/RestrictedListPreference$RestrictedListPreferenceDialogFragment;->mLastCheckedPosition:I

    return-void
.end method
