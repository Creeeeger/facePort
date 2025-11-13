.class public Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "EyeComfortRoutineActivity.java"


# static fields
.field private static final BLUE_LIGHT_FILTER_OPACITY_URI:Landroid/net/Uri;


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mEyeComfortColorTempObserver:Landroid/database/ContentObserver;

.field private mEyeComfortSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmEyeComfortSeekBar(Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;)Landroidx/appcompat/widget/SeslSeekBar;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;->mEyeComfortSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string v0, "blue_light_filter_opacity"

    .line 38
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;->BLUE_LIGHT_FILTER_OPACITY_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 29
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 44
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;->mHandler:Landroid/os/Handler;

    .line 46
    new-instance v1, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity$1;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity$1;-><init>(Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;->mEyeComfortColorTempObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method private destroyContentObserver()V
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;->mEyeComfortColorTempObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method private setContentObserver()V
    .locals 3

    .line 110
    iget-object v0, p0, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;->BLUE_LIGHT_FILTER_OPACITY_URI:Landroid/net/Uri;

    iget-object p0, p0, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;->mEyeComfortColorTempObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private setEyeComfortSeekBar()V
    .locals 4

    .line 130
    iget-object v0, p0, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;->mEyeComfortSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SeslProgressBar;->incrementProgressBy(I)V

    .line 131
    iget-object v0, p0, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;->mEyeComfortSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setMax(I)V

    .line 132
    iget-object v0, p0, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;->mEyeComfortSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setSeamless(Z)V

    .line 133
    iget-object v0, p0, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;->mEyeComfortSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    iget-object v1, p0, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "blue_light_filter_opacity"

    const/4 v3, 0x5

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setProgress(I)V

    .line 134
    iget-object v0, p0, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;->mEyeComfortSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    new-instance v1, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity$3;-><init>(Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SeslSeekBar;->setOnSeekBarChangeListener(Landroidx/appcompat/widget/SeslSeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method private setEyeComfortState()V
    .locals 4

    const-string v0, "EyeComfortRoutineActivity"

    const-string v1, "turning eye comfort shield: ON"

    .line 118
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object v0, p0, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "blue_light_filter_scheduled"

    const/4 v2, 0x1

    .line 120
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v1, "blue_light_filter_type"

    const/4 v3, 0x0

    .line 121
    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v1, "blue_light_filter"

    .line 122
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 123
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 124
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.samsung.android.bluelightfilter"

    const-string v3, "com.samsung.android.bluelightfilter.BlueLightFilterService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "BLUE_LIGHT_FILTER_SERVICE_TYPE"

    const/16 v2, 0x18

    .line 125
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 126
    iget-object p0, p0, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method private showEyeComfortRoutineDialog()V
    .locals 3

    .line 77
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/settings/R$layout;->sec_eye_comfort_routine_handler_dialog:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 79
    sget v1, Lcom/android/settings/R$id;->eye_comfort_routine_seekbar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/SeslSeekBar;

    iput-object v1, p0, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;->mEyeComfortSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    .line 81
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 82
    sget v2, Lcom/android/settings/R$string;->sec_eye_comfort_title:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 83
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 84
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    const/4 v1, 0x1

    .line 85
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 86
    new-instance v2, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity$2;-><init>(Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 93
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 94
    invoke-static {v1}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->setEyeComfortDialogShowing(Z)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 58
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 60
    invoke-virtual {p0, p1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 62
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;->mContext:Landroid/content/Context;

    .line 64
    invoke-direct {p0}, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;->setEyeComfortState()V

    .line 65
    invoke-direct {p0}, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;->showEyeComfortRoutineDialog()V

    .line 66
    invoke-direct {p0}, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;->setEyeComfortSeekBar()V

    const-string p0, "EyeComfortRoutineActivity"

    const-string p1, "Activity created"

    .line 68
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 99
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 100
    invoke-direct {p0}, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;->destroyContentObserver()V

    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 105
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    .line 106
    invoke-direct {p0}, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;->destroyContentObserver()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 73
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 74
    invoke-direct {p0}, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;->setContentObserver()V

    return-void
.end method
