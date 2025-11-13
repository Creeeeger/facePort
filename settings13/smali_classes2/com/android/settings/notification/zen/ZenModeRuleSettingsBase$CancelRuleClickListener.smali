.class public Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase$CancelRuleClickListener;
.super Ljava/lang/Object;
.source "ZenModeRuleSettingsBase.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CancelRuleClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;


# direct methods
.method public constructor <init>(Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase$CancelRuleClickListener;->this$0:Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 201
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase$CancelRuleClickListener;->this$0:Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
