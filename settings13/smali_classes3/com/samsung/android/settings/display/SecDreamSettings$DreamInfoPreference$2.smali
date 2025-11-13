.class Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference$2;
.super Ljava/lang/Object;
.source "SecDreamSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;)V
    .locals 0

    .line 464
    iput-object p1, p0, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference$2;->this$1:Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 467
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference$2;->this$1:Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;

    invoke-static {p1}, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;->-$$Nest$minsertCurrentScreenSaverLogging(Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;)V

    .line 468
    iget-object p0, p0, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference$2;->this$1:Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;->performClick()V

    return-void
.end method
