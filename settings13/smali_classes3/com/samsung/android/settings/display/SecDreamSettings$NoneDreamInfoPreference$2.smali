.class Lcom/samsung/android/settings/display/SecDreamSettings$NoneDreamInfoPreference$2;
.super Ljava/lang/Object;
.source "SecDreamSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/display/SecDreamSettings$NoneDreamInfoPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/settings/display/SecDreamSettings$NoneDreamInfoPreference;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/SecDreamSettings$NoneDreamInfoPreference;)V
    .locals 0

    .line 634
    iput-object p1, p0, Lcom/samsung/android/settings/display/SecDreamSettings$NoneDreamInfoPreference$2;->this$1:Lcom/samsung/android/settings/display/SecDreamSettings$NoneDreamInfoPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 637
    iget-object p0, p0, Lcom/samsung/android/settings/display/SecDreamSettings$NoneDreamInfoPreference$2;->this$1:Lcom/samsung/android/settings/display/SecDreamSettings$NoneDreamInfoPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDreamSettings$NoneDreamInfoPreference;->performClick()V

    return-void
.end method
