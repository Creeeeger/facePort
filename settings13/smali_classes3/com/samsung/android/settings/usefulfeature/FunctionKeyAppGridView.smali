.class public Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "FunctionKeyAppGridView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView$AppRow;,
        Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView$LauncherAppListLoader;
    }
.end annotation


# instance fields
.field private mAppPickerGridView:Lcom/samsung/android/settings/usefulfeature/AppGridView;

.field private mAppRows:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView$AppRow;",
            ">;"
        }
    .end annotation
.end field

.field private mBlockList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mLoading:Landroid/view/ViewGroup;

.field private mPressType:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmAppPickerGridView(Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView;)Lcom/samsung/android/settings/usefulfeature/AppGridView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView;->mAppPickerGridView:Lcom/samsung/android/settings/usefulfeature/AppGridView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAppRows(Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView;->mAppRows:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBlockList(Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView;->mBlockList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLoading(Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView;->mLoading:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPressType(Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView;->mPressType:I

    return p0
.end method

.method static bridge synthetic -$$Nest$msetupOnBindListener(Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView;Landroidx/apppickerview/widget/AppPickerView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView;->setupOnBindListener(Landroidx/apppickerview/widget/AppPickerView;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView;->mAppRows:Ljava/util/Map;

    const/4 v0, 0x0

    .line 59
    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView;->mBlockList:Ljava/util/ArrayList;

    return-void
.end method

.method private getBlockList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 255
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 256
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportBixbyClient()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "AssistantHomeLauncherActivity"

    .line 257
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string v1, "com.sec.android.app.camera.Camera"

    .line 259
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "com.google.android.apps.googleassistant"

    .line 260
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "yourapp24.android.tools.alice_lite"

    .line 261
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "com.amazon.dee.app"

    .line 262
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "com.microsoft.cortana"

    .line 263
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "com.testa.databot"

    .line 264
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "com.nuance.balerion"

    .line 265
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "com.hound.android.app"

    .line 266
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "com.artificialsolutions.teneo.va.prod"

    .line 267
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "com.magnifis.parking"

    .line 268
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "com.multiverse.jarvis"

    .line 269
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "com.multiverse.jarvis.go"

    .line 270
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "com.pa.gs.ai"

    .line 271
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "ai.saiy.android"

    .line 272
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "bolo.codeplay.com.bolo"

    .line 273
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "com.bulletproof.voicerec.avxfree"

    .line 274
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "com.studios.nebulas.noah"

    .line 275
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "com.multiverse.fridayai"

    .line 276
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "jp.classmethod.android.Friendly"

    .line 277
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "com.google.android.apps.accessibility.voiceaccess"

    .line 278
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "com.stupendous.voiceassistant"

    .line 279
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "com.voiceassistant"

    .line 280
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "com.avaya.endpoint.avayavoiceassistant"

    .line 281
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "com.thanksmister.iot.voicepanel"

    .line 282
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "io.justoneapp.voice"

    .line 283
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "com.voicecommandforgoogleassistant.editingmultiapps"

    .line 284
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "com.combo.voiceassistant"

    .line 285
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "com.voice.assistant.commands"

    .line 286
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "net.wintersun.launchalexa"

    .line 287
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "com.gigaaa.app.android"

    .line 288
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "com.siri.siriapple.siriassistant"

    .line 289
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "com.iflytek.cmcc"

    .line 290
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "com.xiaomi.smarthome"

    .line 291
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "com.iflytek.speechcloud"

    .line 292
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "com.chongdong.cloud"

    .line 293
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "com.alibaba.ailabs.tg"

    .line 294
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "com.tianming"

    .line 295
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "com.wowenwen.yy"

    .line 296
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "com.linglong.android"

    .line 297
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "com.iflytek.android.viafly.news"

    .line 298
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "com.singulariti.niapp"

    .line 299
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "com.zaijia.xiaodu"

    .line 300
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "com.tencent.mia.speaker"

    .line 301
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "com.xiaomi.xiaoailite"

    .line 302
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "com.orion.xiaoya.speakerclient"

    .line 303
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "com.naver.nozzle"

    .line 304
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 306
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isPayWithSamsungPayVisible(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "com.samsung.android.spay"

    .line 308
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p0, "com.samsung.android.spaymini"

    .line 309
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v0
.end method

.method private setupOnBindListener(Landroidx/apppickerview/widget/AppPickerView;)V
    .locals 1

    .line 205
    new-instance v0, Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView$1;-><init>(Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView;)V

    invoke-virtual {p1, v0}, Landroidx/apppickerview/widget/AppPickerView;->setOnBindListener(Landroidx/apppickerview/widget/AppPickerView$OnBindListener;)V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x1dc0

    return p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .line 109
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 110
    new-instance p1, Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView$LauncherAppListLoader;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView$LauncherAppListLoader;-><init>(Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView;Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView$LauncherAppListLoader-IA;)V

    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p0, v0}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 75
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 76
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView;->mContext:Landroid/content/Context;

    .line 77
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "pressed_type"

    .line 78
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "long"

    .line 79
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    .line 80
    iput p1, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView;->mPressType:I

    goto :goto_0

    :cond_0
    const-string v0, "double"

    .line 81
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x2

    .line 82
    iput p1, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView;->mPressType:I

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 84
    iput p1, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView;->mPressType:I

    .line 86
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView;->getBlockList()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView;->mBlockList:Ljava/util/ArrayList;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 91
    sget p3, Lcom/android/settings/R$layout;->sec_app_shortcut_view:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 93
    new-instance p2, Lcom/samsung/android/settings/usefulfeature/AppGridView;

    iget-object p3, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView;->mContext:Landroid/content/Context;

    invoke-direct {p2, p3}, Lcom/samsung/android/settings/usefulfeature/AppGridView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView;->mAppPickerGridView:Lcom/samsung/android/settings/usefulfeature/AppGridView;

    .line 94
    sget p2, Lcom/android/settings/R$id;->appshortcutview:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/settings/usefulfeature/AppGridView;

    iput-object p2, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView;->mAppPickerGridView:Lcom/samsung/android/settings/usefulfeature/AppGridView;

    const/4 p3, 0x1

    .line 95
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 96
    iget-object p2, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView;->mAppPickerGridView:Lcom/samsung/android/settings/usefulfeature/AppGridView;

    const/16 p3, 0xf

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->semSetRoundedCorners(I)V

    .line 97
    iget-object p2, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView;->mAppPickerGridView:Lcom/samsung/android/settings/usefulfeature/AppGridView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$color;->sec_widget_round_and_bgcolor:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, p3, v0}, Landroid/view/ViewGroup;->semSetRoundedCornerColor(II)V

    .line 98
    iget-object p2, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView;->mAppPickerGridView:Lcom/samsung/android/settings/usefulfeature/AppGridView;

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 100
    sget p2, Lcom/android/settings/R$id;->loading_panel:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView;->mLoading:Landroid/view/ViewGroup;

    const/4 p3, 0x3

    .line 101
    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->semSetRoundedCorners(I)V

    .line 102
    iget-object p2, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView;->mLoading:Landroid/view/ViewGroup;

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView;->mContext:Landroid/content/Context;

    .line 103
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    .line 102
    invoke-virtual {p2, p3, p0}, Landroid/view/ViewGroup;->semSetRoundedCornerColor(II)V

    return-object p1
.end method

.method public onPause()V
    .locals 1

    .line 116
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    .line 117
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView;->mLoading:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 118
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView;->mLoading:Landroid/view/ViewGroup;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method protected savePressActionApp(Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView$AppRow;)V
    .locals 2

    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView$AppRow;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView$AppRow;->mActivityName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 237
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView;->mPressType:I

    invoke-static {v0, v1, p1}, Lcom/samsung/android/settings/usefulfeature/FunctionKeyInfo;->savePressActionApp(Landroid/content/Context;ILjava/lang/String;)V

    .line 238
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView;->getMetricsCategory()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1dc0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method
