.class public final synthetic Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment$$ExternalSyntheticLambda3;->f$0:Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment$$ExternalSyntheticLambda3;->f$0:Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;

    iget v0, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mPreviousFontIndex:I

    iput v0, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mCurrentFontIndex:I

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    if-eqz p0, :cond_0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->setItemChecked(I)V

    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
