.class Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$8;
.super Ljava/lang/Object;
.source "SecFontSizePreferenceFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->setBoldFontPreference()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;)V
    .locals 0

    .line 972
    iput-object p1, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$8;->this$0:Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 975
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 977
    iget-object p2, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$8;->this$0:Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;

    invoke-static {p2}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->-$$Nest$fgetmIsFromStore(Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$8;->this$0:Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;

    invoke-static {p2}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->-$$Nest$fgetmPreviewTypeface(Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;)Landroid/graphics/Typeface;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 978
    iget-object p2, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$8;->this$0:Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;

    invoke-static {p2, p1}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->-$$Nest$fputmPreviewFontIsBold(Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;I)V

    .line 979
    iget-object p0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$8;->this$0:Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;

    invoke-static {p0, p1}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->-$$Nest$msetBoldFontForFlipFontsPreview(Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;Z)V

    goto :goto_0

    .line 981
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$8;->this$0:Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;

    invoke-static {p0, p1}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->-$$Nest$mapplyBoldFont(Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;Z)V

    const/16 p0, 0x1d14

    .line 982
    invoke-static {p0, p1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    :goto_0
    const/4 p0, 0x1

    return p0
.end method
