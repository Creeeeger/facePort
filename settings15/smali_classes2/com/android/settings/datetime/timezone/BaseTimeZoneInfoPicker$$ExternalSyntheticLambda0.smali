.class public final synthetic Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/datetime/timezone/BaseTimeZonePicker$OnListItemClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker;

    return-void
.end method


# virtual methods
.method public final onListItemClick(Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$AdapterItem;)V
    .locals 2

    check-cast p1, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$TimeZoneInfoItem;

    iget-object p0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$TimeZoneInfoItem;->mTimeZoneInfo:Lcom/android/settings/datetime/timezone/TimeZoneInfo;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, p1}, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker;->prepareResultData(Lcom/android/settings/datetime/timezone/TimeZoneInfo;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
