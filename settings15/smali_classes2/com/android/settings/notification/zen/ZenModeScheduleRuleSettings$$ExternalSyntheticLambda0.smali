.class public final synthetic Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;

    sget p1, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->$r8$clinit:I

    invoke-virtual {p0}, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->showConfirmDialog()V

    return-void
.end method
