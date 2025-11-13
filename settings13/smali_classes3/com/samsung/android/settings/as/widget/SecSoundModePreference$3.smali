.class Lcom/samsung/android/settings/as/widget/SecSoundModePreference$3;
.super Ljava/lang/Object;
.source "SecSoundModePreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/as/widget/SecSoundModePreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/as/widget/SecSoundModePreference;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/as/widget/SecSoundModePreference;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/samsung/android/settings/as/widget/SecSoundModePreference$3;->this$0:Lcom/samsung/android/settings/as/widget/SecSoundModePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 126
    iget-object p1, p0, Lcom/samsung/android/settings/as/widget/SecSoundModePreference$3;->this$0:Lcom/samsung/android/settings/as/widget/SecSoundModePreference;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/samsung/android/settings/as/widget/SecSoundModePreference;->-$$Nest$fputmSelectedPosition(Lcom/samsung/android/settings/as/widget/SecSoundModePreference;I)V

    .line 127
    iget-object p1, p0, Lcom/samsung/android/settings/as/widget/SecSoundModePreference$3;->this$0:Lcom/samsung/android/settings/as/widget/SecSoundModePreference;

    invoke-static {p1}, Lcom/samsung/android/settings/as/widget/SecSoundModePreference;->-$$Nest$fgetmCustomView(Lcom/samsung/android/settings/as/widget/SecSoundModePreference;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 128
    iget-object p1, p0, Lcom/samsung/android/settings/as/widget/SecSoundModePreference$3;->this$0:Lcom/samsung/android/settings/as/widget/SecSoundModePreference;

    invoke-static {p1}, Lcom/samsung/android/settings/as/widget/SecSoundModePreference;->-$$Nest$fgetmSelectedPosition(Lcom/samsung/android/settings/as/widget/SecSoundModePreference;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/samsung/android/settings/as/widget/SecSoundModePreference;->-$$Nest$mupdateButtonStatus(Lcom/samsung/android/settings/as/widget/SecSoundModePreference;I)V

    .line 130
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/as/widget/SecSoundModePreference$3;->this$0:Lcom/samsung/android/settings/as/widget/SecSoundModePreference;

    invoke-static {p0}, Lcom/samsung/android/settings/as/widget/SecSoundModePreference;->-$$Nest$fgetmSelectedPosition(Lcom/samsung/android/settings/as/widget/SecSoundModePreference;)I

    move-result p1

    invoke-static {p0, p1}, Lcom/samsung/android/settings/as/widget/SecSoundModePreference;->-$$Nest$mcallButtonSelectListener(Lcom/samsung/android/settings/as/widget/SecSoundModePreference;I)V

    return-void
.end method
