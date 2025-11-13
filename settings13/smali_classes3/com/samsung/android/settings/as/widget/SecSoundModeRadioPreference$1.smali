.class Lcom/samsung/android/settings/as/widget/SecSoundModeRadioPreference$1;
.super Ljava/lang/Object;
.source "SecSoundModeRadioPreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/as/widget/SecSoundModeRadioPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/as/widget/SecSoundModeRadioPreference;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/as/widget/SecSoundModeRadioPreference;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/samsung/android/settings/as/widget/SecSoundModeRadioPreference$1;->this$0:Lcom/samsung/android/settings/as/widget/SecSoundModeRadioPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/samsung/android/settings/as/widget/SecSoundModeRadioPreference$1;->this$0:Lcom/samsung/android/settings/as/widget/SecSoundModeRadioPreference;

    invoke-static {p0, p1, p2}, Lcom/samsung/android/settings/as/widget/SecSoundModeRadioPreference;->-$$Nest$monRadioButtonClicked(Lcom/samsung/android/settings/as/widget/SecSoundModeRadioPreference;Landroid/widget/CompoundButton;Z)V

    return-void
.end method
