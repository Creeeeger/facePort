.class public final synthetic Lcom/android/settings/notification/modes/ZenModeIconPickerListPreferenceController$IconHolder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/notification/modes/ZenModeIconPickerListPreferenceController$IconHolder;

.field public final synthetic f$1:Lcom/android/settings/notification/modes/IconOptionsProvider$IconInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/notification/modes/ZenModeIconPickerListPreferenceController$IconHolder;Lcom/android/settings/notification/modes/IconOptionsProvider$IconInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/notification/modes/ZenModeIconPickerListPreferenceController$IconHolder$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/notification/modes/ZenModeIconPickerListPreferenceController$IconHolder;

    iput-object p2, p0, Lcom/android/settings/notification/modes/ZenModeIconPickerListPreferenceController$IconHolder$$ExternalSyntheticLambda0;->f$1:Lcom/android/settings/notification/modes/IconOptionsProvider$IconInfo;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/android/settings/notification/modes/ZenModeIconPickerListPreferenceController$IconHolder$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/notification/modes/ZenModeIconPickerListPreferenceController$IconHolder;

    iget-object p0, p0, Lcom/android/settings/notification/modes/ZenModeIconPickerListPreferenceController$IconHolder$$ExternalSyntheticLambda0;->f$1:Lcom/android/settings/notification/modes/IconOptionsProvider$IconInfo;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p0, p0, Lcom/android/settings/notification/modes/IconOptionsProvider$IconInfo;->resId:I

    iget-object p1, p1, Lcom/android/settings/notification/modes/ZenModeIconPickerListPreferenceController$IconHolder;->this$0:Lcom/android/settings/notification/modes/ZenModeIconPickerListPreferenceController;

    invoke-virtual {p1, p0}, Lcom/android/settings/notification/modes/ZenModeIconPickerListPreferenceController;->onIconSelected(I)V

    return-void
.end method
