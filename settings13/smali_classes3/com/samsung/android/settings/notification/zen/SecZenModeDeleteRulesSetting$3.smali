.class Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting$3;
.super Ljava/lang/Object;
.source "SecZenModeDeleteRulesSetting.java"

# interfaces
.implements Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->createActionbarLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting$3;->this$0:Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOffsetChanged(Lcom/google/android/material/appbar/AppBarLayout;I)V
    .locals 0

    .line 200
    iget-object p2, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting$3;->this$0:Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;

    invoke-static {p2}, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->-$$Nest$fgetmSelectedZenRuleTextView(Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;)Landroid/widget/TextView;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 201
    iget-object p2, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting$3;->this$0:Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;

    invoke-static {p2}, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->-$$Nest$fgetmSelectedZenRuleTextView(Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;)Landroid/widget/TextView;

    move-result-object p2

    iget-object p0, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting$3;->this$0:Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;

    invoke-static {p0, p1}, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->-$$Nest$mgetTitleAlpha(Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;Lcom/google/android/material/appbar/AppBarLayout;)F

    move-result p0

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_0
    return-void
.end method
