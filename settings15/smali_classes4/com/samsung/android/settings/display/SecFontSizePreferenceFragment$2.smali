.class public final Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$2;->this$0:Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$2;->this$0:Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;

    iget-boolean p2, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mIsFromStore:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mPreviewTypeface:Landroid/graphics/Typeface;

    if-eqz p2, :cond_0

    iput p1, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mPreviewFontIsBold:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->setBoldFontForFlipFontsPreview(Z)V

    goto :goto_1

    :cond_0
    iget-object p2, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_1

    const/16 v0, 0x12c

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {p2, v0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->writeFontWeightDBAllUser(Landroid/content/Context;I)V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p2, "bold_text"

    invoke-static {p0, p2, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/16 p0, 0x1d14

    invoke-static {p0, p1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    :goto_1
    const/4 p0, 0x1

    return p0
.end method
