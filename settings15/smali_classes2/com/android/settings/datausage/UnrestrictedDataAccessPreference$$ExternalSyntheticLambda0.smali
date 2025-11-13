.class public final synthetic Lcom/android/settings/datausage/UnrestrictedDataAccessPreference$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object p0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->mEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    invoke-static {v0, v1}, Lcom/android/settingslib/applications/AppUtils;->getIcon(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v1, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;Landroid/graphics/drawable/Drawable;)V

    invoke-static {v1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method
