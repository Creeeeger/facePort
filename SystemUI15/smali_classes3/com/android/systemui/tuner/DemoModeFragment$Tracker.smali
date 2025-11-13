.class public final Lcom/android/systemui/tuner/DemoModeFragment$Tracker;
.super Lcom/android/systemui/demomode/DemoModeAvailabilityTracker;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/tuner/DemoModeFragment;


# direct methods
.method public constructor <init>(Lcom/android/systemui/tuner/DemoModeFragment;Landroid/content/Context;Lcom/android/systemui/util/settings/GlobalSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/tuner/DemoModeFragment$Tracker;->this$0:Lcom/android/systemui/tuner/DemoModeFragment;

    invoke-direct {p0, p2, p3}, Lcom/android/systemui/demomode/DemoModeAvailabilityTracker;-><init>(Landroid/content/Context;Lcom/android/systemui/util/settings/GlobalSettings;)V

    return-void
.end method


# virtual methods
.method public final onDemoModeAvailabilityChanged()V
    .locals 2

    sget-object v0, Lcom/android/systemui/tuner/DemoModeFragment;->STATUS_ICONS:[Ljava/lang/String;

    iget-object p0, p0, Lcom/android/systemui/tuner/DemoModeFragment$Tracker;->this$0:Lcom/android/systemui/tuner/DemoModeFragment;

    iget-object v0, p0, Lcom/android/systemui/tuner/DemoModeFragment;->mEnabledSwitch:Landroidx/preference/SwitchPreference;

    iget-object v1, p0, Lcom/android/systemui/tuner/DemoModeFragment;->mDemoModeTracker:Lcom/android/systemui/tuner/DemoModeFragment$Tracker;

    iget-boolean v1, v1, Lcom/android/systemui/demomode/DemoModeAvailabilityTracker;->isDemoModeAvailable:Z

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/systemui/tuner/DemoModeFragment;->mOnSwitch:Landroidx/preference/SwitchPreference;

    iget-object v1, p0, Lcom/android/systemui/tuner/DemoModeFragment;->mDemoModeTracker:Lcom/android/systemui/tuner/DemoModeFragment$Tracker;

    iget-boolean v1, v1, Lcom/android/systemui/demomode/DemoModeAvailabilityTracker;->isDemoModeAvailable:Z

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/systemui/tuner/DemoModeFragment;->mOnSwitch:Landroidx/preference/SwitchPreference;

    iget-object p0, p0, Lcom/android/systemui/tuner/DemoModeFragment;->mDemoModeTracker:Lcom/android/systemui/tuner/DemoModeFragment$Tracker;

    iget-boolean p0, p0, Lcom/android/systemui/demomode/DemoModeAvailabilityTracker;->isInDemoMode:Z

    invoke-virtual {v0, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

.method public final onDemoModeFinished()V
    .locals 1

    sget-object v0, Lcom/android/systemui/tuner/DemoModeFragment;->STATUS_ICONS:[Ljava/lang/String;

    iget-object p0, p0, Lcom/android/systemui/tuner/DemoModeFragment$Tracker;->this$0:Lcom/android/systemui/tuner/DemoModeFragment;

    iget-object v0, p0, Lcom/android/systemui/tuner/DemoModeFragment;->mOnSwitch:Landroidx/preference/SwitchPreference;

    iget-object p0, p0, Lcom/android/systemui/tuner/DemoModeFragment;->mDemoModeTracker:Lcom/android/systemui/tuner/DemoModeFragment$Tracker;

    iget-boolean p0, p0, Lcom/android/systemui/demomode/DemoModeAvailabilityTracker;->isInDemoMode:Z

    invoke-virtual {v0, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

.method public final onDemoModeStarted()V
    .locals 1

    sget-object v0, Lcom/android/systemui/tuner/DemoModeFragment;->STATUS_ICONS:[Ljava/lang/String;

    iget-object p0, p0, Lcom/android/systemui/tuner/DemoModeFragment$Tracker;->this$0:Lcom/android/systemui/tuner/DemoModeFragment;

    iget-object v0, p0, Lcom/android/systemui/tuner/DemoModeFragment;->mOnSwitch:Landroidx/preference/SwitchPreference;

    iget-object p0, p0, Lcom/android/systemui/tuner/DemoModeFragment;->mDemoModeTracker:Lcom/android/systemui/tuner/DemoModeFragment$Tracker;

    iget-boolean p0, p0, Lcom/android/systemui/demomode/DemoModeAvailabilityTracker;->isInDemoMode:Z

    invoke-virtual {v0, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method
