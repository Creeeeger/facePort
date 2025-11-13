.class public Lcom/android/settings/MainClear;
.super Lcom/android/settings/core/InstrumentedFragment;
.source "MainClear.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# static fields
.field static final CREDENTIAL_CONFIRM_REQUEST:I = 0x38

.field static final KEYGUARD_REQUEST:I = 0x37

.field private static final mAppLabelComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private static rsm:Lcom/samsung/android/service/reactive/ReactiveServiceManager;


# instance fields
.field private mAllPreloadApps:Landroid/widget/RadioButton;

.field private mAllPreloadAppsLayout:Landroid/widget/LinearLayout;

.field private mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryLevel:I

.field private mCanEraseExternalOnFuseSystem:Z

.field private mContentView:Landroid/view/View;

.field private mDescriptionView:Landroid/widget/TextView;

.field private mEsimCheckDefaultVal:Z

.field mEsimStorage:Landroid/widget/CheckBox;

.field mEsimStorageContainer:Landroid/view/View;

.field private mExceptRemovedApps:Landroid/widget/RadioButton;

.field private mExceptRemovedAppsLayout:Landroid/widget/LinearLayout;

.field mExternalStorage:Landroid/widget/CheckBox;

.field private mExternalStorageContainer:Landroid/view/View;

.field mInitiateButton:Landroid/widget/Button;

.field protected final mInitiateListener:Landroid/view/View$OnClickListener;

.field private mPinConfirmed:Z

.field private mPreloadAppsRestoreDescription:Landroid/widget/TextView;

.field private mPreloadAppsRestoreOption:I

.field private mPreloadAppsRestoreOptionLayout:Landroid/widget/LinearLayout;

.field private mResetBatteryLevelCheckDialog:Landroidx/appcompat/app/AlertDialog;

.field mScrollView:Landroidx/core/widget/NestedScrollView;

.field private mSmartSwitchTipLayout:Landroid/widget/LinearLayout;

.field private mStrSdVolumeId:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$1obZxIkdPycDdeXljB-QHrbcnMs(Lcom/android/settings/MainClear;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/MainClear;->lambda$loadAccountList$0()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$sTow67Ak-drHhZaD9k0MXEm0X-o(Lcom/android/settings/MainClear;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/MainClear;->lambda$onCreateView$2(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vytkT4JMo9D29JLHC3-O7q8aquI(Lcom/android/settings/MainClear;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/MainClear;->lambda$loadAccountList$1()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBatteryLevel(Lcom/android/settings/MainClear;)I
    .locals 0

    iget p0, p0, Lcom/android/settings/MainClear;->mBatteryLevel:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmBatteryLevel(Lcom/android/settings/MainClear;I)V
    .locals 0

    iput p1, p0, Lcom/android/settings/MainClear;->mBatteryLevel:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmEsimCheckDefaultVal(Lcom/android/settings/MainClear;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/MainClear;->mEsimCheckDefaultVal:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckSmartSwitchPackage(Lcom/android/settings/MainClear;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/MainClear;->checkSmartSwitchPackage()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mrunKeyguardConfirmation(Lcom/android/settings/MainClear;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/MainClear;->runKeyguardConfirmation(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$msetPreloadAppsResetOption(Lcom/android/settings/MainClear;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/MainClear;->setPreloadAppsResetOption(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowResetBatteryCheckDialog(Lcom/android/settings/MainClear;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/MainClear;->showResetBatteryCheckDialog()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 1126
    new-instance v0, Lcom/android/settings/MainClear$7;

    invoke-direct {v0}, Lcom/android/settings/MainClear$7;-><init>()V

    sput-object v0, Lcom/android/settings/MainClear;->mAppLabelComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 132
    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedFragment;-><init>()V

    const/4 v0, 0x0

    .line 188
    iput-boolean v0, p0, Lcom/android/settings/MainClear;->mCanEraseExternalOnFuseSystem:Z

    const/4 v1, 0x0

    .line 189
    iput-object v1, p0, Lcom/android/settings/MainClear;->mStrSdVolumeId:Ljava/lang/String;

    .line 194
    iput-object v1, p0, Lcom/android/settings/MainClear;->mResetBatteryLevelCheckDialog:Landroidx/appcompat/app/AlertDialog;

    .line 195
    iput v0, p0, Lcom/android/settings/MainClear;->mBatteryLevel:I

    .line 203
    iput-boolean v0, p0, Lcom/android/settings/MainClear;->mEsimCheckDefaultVal:Z

    .line 406
    new-instance v0, Lcom/android/settings/MainClear$1;

    invoke-direct {v0, p0}, Lcom/android/settings/MainClear$1;-><init>(Lcom/android/settings/MainClear;)V

    iput-object v0, p0, Lcom/android/settings/MainClear;->mInitiateListener:Landroid/view/View$OnClickListener;

    .line 1327
    new-instance v0, Lcom/android/settings/MainClear$11;

    invoke-direct {v0, p0}, Lcom/android/settings/MainClear$11;-><init>(Lcom/android/settings/MainClear;)V

    iput-object v0, p0, Lcom/android/settings/MainClear;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private addDescriptionForRemovingPreloadApp()V
    .locals 16

    move-object/from16 v1, p0

    const-string v0, ""

    .line 983
    iget-object v2, v1, Lcom/android/settings/MainClear;->mContentView:Landroid/view/View;

    sget v3, Lcom/android/settings/R$id;->main_clear_desc_app:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 984
    iget-object v3, v1, Lcom/android/settings/MainClear;->mContentView:Landroid/view/View;

    sget v4, Lcom/android/settings/R$id;->removable_preload_apps:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    if-eqz v3, :cond_0

    .line 985
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 987
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    .line 989
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    .line 993
    :try_start_0
    new-instance v7, Ljava/io/FileInputStream;

    new-instance v8, Ljava/io/File;

    const-string v9, "/system/etc/removable_preload.txt"

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 994
    :try_start_1
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    invoke-direct {v9, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v8, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 997
    :cond_1
    :goto_0
    :try_start_2
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    const-string v9, "name="

    .line 998
    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    const-string v9, "name=\'"

    .line 999
    invoke-virtual {v6, v9, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    const-string v9, "\'"

    invoke-virtual {v6, v9, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1008
    :cond_2
    :try_start_3
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v6, v0

    .line 1010
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 1013
    :goto_1
    :try_start_4
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_9

    goto :goto_6

    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object v6, v8

    goto/16 :goto_e

    :catch_1
    move-exception v0

    move-object v6, v8

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v6, v8

    goto :goto_4

    :catch_3
    move-exception v0

    goto :goto_2

    :catch_4
    move-exception v0

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v1, v0

    move-object v7, v6

    goto/16 :goto_e

    :catch_5
    move-exception v0

    move-object v7, v6

    .line 1005
    :goto_2
    :try_start_5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v6, :cond_3

    .line 1008
    :try_start_6
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_3

    :catch_6
    move-exception v0

    move-object v6, v0

    .line 1010
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    :cond_3
    :goto_3
    if-eqz v7, :cond_5

    .line 1013
    :try_start_7
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_9

    goto :goto_6

    :catch_7
    move-exception v0

    move-object v7, v6

    .line 1003
    :goto_4
    :try_start_8
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-eqz v6, :cond_4

    .line 1008
    :try_start_9
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    goto :goto_5

    :catch_8
    move-exception v0

    move-object v6, v0

    .line 1010
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    :cond_4
    :goto_5
    if-eqz v7, :cond_5

    .line 1013
    :try_start_a
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_9

    goto :goto_6

    :catch_9
    move-exception v0

    move-object v6, v0

    .line 1015
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 1019
    :cond_5
    :goto_6
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_6

    return-void

    .line 1024
    :cond_6
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1025
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1027
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-string v6, "layout_inflater"

    .line 1029
    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/LayoutInflater;

    .line 1033
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1034
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v9, 0x0

    move v10, v9

    :goto_7
    if-ge v10, v0, :cond_d

    .line 1036
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    .line 1038
    :try_start_b
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 1039
    invoke-virtual {v11, v12, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v13

    .line 1042
    invoke-virtual {v11, v12, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v14

    .line 1043
    iget v14, v14, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v15, 0x1

    and-int/2addr v14, v15

    if-eqz v14, :cond_7

    .line 1044
    invoke-direct {v1, v11, v12}, Lcom/android/settings/MainClear;->isSystemAppExcludedList(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v12
    :try_end_b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b .. :try_end_b} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_b} :catch_a

    if-nez v12, :cond_7

    goto :goto_b

    .line 1055
    :cond_7
    iget-object v12, v13, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v12, v11}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .line 1058
    sget v14, Lcom/android/settings/R$layout;->sec_main_clear_account:I

    invoke-virtual {v6, v14, v3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v14

    const v15, 0x1020016

    .line 1059
    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    iget-object v13, v13, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v13, v11}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v15, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v12, :cond_8

    .line 1061
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v13, Lcom/android/settings/R$dimen;->sec_master_clear_removable_preload_apps_icon_size:I

    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    .line 1062
    invoke-virtual {v12, v9, v9, v11, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const v11, 0x1020006

    .line 1063
    invoke-virtual {v14, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1066
    :cond_8
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    const-string v12, "\\."

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 1068
    array-length v12, v11

    move v13, v9

    :goto_8
    if-ge v13, v12, :cond_b

    aget-object v15, v11, v13

    const-string v9, "sec"

    .line 1069
    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_a

    const-string v9, "samsung"

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    goto :goto_9

    :cond_9
    add-int/lit8 v13, v13, 0x1

    const/4 v9, 0x0

    goto :goto_8

    :cond_a
    :goto_9
    const/4 v15, 0x1

    goto :goto_a

    :cond_b
    const/4 v15, 0x0

    :goto_a
    if-eqz v15, :cond_c

    .line 1075
    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 1077
    :cond_c
    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :catch_a
    :goto_b
    add-int/lit8 v10, v10, 0x1

    const/4 v9, 0x0

    goto/16 :goto_7

    .line 1081
    :cond_d
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_e

    return-void

    .line 1085
    :cond_e
    sget-object v0, Lcom/android/settings/MainClear;->mAppLabelComparator:Ljava/util/Comparator;

    invoke-static {v7, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1086
    invoke-static {v8, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    if-eqz v3, :cond_10

    const/4 v0, 0x0

    .line 1088
    :goto_c
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_f

    .line 1089
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_f
    const/4 v0, 0x0

    .line 1091
    :goto_d
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_10

    .line 1092
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 1095
    :cond_10
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 1096
    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 1098
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz v3, :cond_11

    .line 1100
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_11
    return-void

    :catchall_2
    move-exception v0

    move-object v1, v0

    :goto_e
    if-eqz v6, :cond_12

    .line 1008
    :try_start_c
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_b

    goto :goto_f

    :catch_b
    move-exception v0

    move-object v2, v0

    .line 1010
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :cond_12
    :goto_f
    if-eqz v7, :cond_13

    .line 1013
    :try_start_d
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_c

    goto :goto_10

    :catch_c
    move-exception v0

    move-object v2, v0

    .line 1015
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 1017
    :cond_13
    :goto_10
    throw v1
.end method

.method private addSmartSwitchTipView()V
    .locals 6

    .line 1198
    new-instance v0, Lcom/android/settings/MainClear$8;

    invoke-direct {v0, p0}, Lcom/android/settings/MainClear$8;-><init>(Lcom/android/settings/MainClear;)V

    .line 1245
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->smart_switch_name_mobile:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1247
    invoke-static {}, Lcom/android/settings/Utils;->supportSdcard()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 1248
    sget v2, Lcom/android/settings/R$string;->master_clear_smartswitch_tip_description:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v3

    invoke-virtual {p0, v2, v4}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1250
    :cond_0
    sget v2, Lcom/android/settings/R$string;->master_clear_smartswitch_tip_description_no_sdcard:I

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1254
    :goto_0
    :try_start_0
    new-instance v4, Landroid/text/SpannableString;

    invoke-direct {v4, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1255
    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 1256
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v5

    invoke-virtual {v4, v0, v5, v1, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1257
    iget-object v0, p0, Lcom/android/settings/MainClear;->mDescriptionView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1258
    iget-object v0, p0, Lcom/android/settings/MainClear;->mDescriptionView:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1260
    :catch_0
    iget-object p0, p0, Lcom/android/settings/MainClear;->mDescriptionView:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string p0, "MainClear"

    const-string v0, "Out of BountdsException Occurs!!"

    .line 1261
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private checkReactivationLock()Z
    .locals 3

    .line 1267
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/security/SecurityUtils;->isSupportLMM(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1268
    new-instance v0, Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/settings/MainClear;->rsm:Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    .line 1269
    invoke-virtual {v0}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->getStatus()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    .line 1276
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LMM[getReqiredAuthFlag] in Check= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MainClear"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v1
.end method

.method private checkSmartSwitchPackage()Z
    .locals 4

    .line 1181
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.android.easyMover"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "EXTERNAL_BNR"

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 1183
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.sec.android.easyMover.LAUNCH_SMART_SWITCH"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x10000000

    .line 1184
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1185
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    .line 1187
    :cond_0
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1189
    :goto_0
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    return v2

    :catch_0
    const-string p0, "MainClear"

    const-string v0, "not found activity"

    .line 1192
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method private getContentDescription(Landroid/view/View;Ljava/lang/StringBuffer;)V
    .locals 2

    .line 796
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 799
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 800
    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    .line 801
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 802
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 803
    invoke-direct {p0, v1, p2}, Lcom/android/settings/MainClear;->getContentDescription(Landroid/view/View;Ljava/lang/StringBuffer;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 805
    :cond_1
    instance-of p0, p1, Landroid/widget/TextView;

    if-eqz p0, :cond_2

    .line 806
    check-cast p1, Landroid/widget/TextView;

    .line 807
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    const-string p0, ","

    .line 808
    invoke-virtual {p2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    return-void
.end method

.method private isExtStorageEncrypted()Z
    .locals 1

    .line 813
    invoke-static {}, Landroid/sysprop/VoldProperties;->decrypt()Ljava/util/Optional;

    move-result-object p0

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 814
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private isSystemAppExcludedList(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z
    .locals 3

    .line 1105
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object p0

    const-string v0, "SEC_FLOATING_FEATURE_GMS_CONFIG_PERMISSION_PREGRANT_POLICY_LIST"

    invoke-virtual {p0, v0}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1108
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, ";"

    .line 1112
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    move v0, v1

    .line 1115
    :goto_0
    :try_start_0
    array-length v2, p0

    if-ge v0, v2, :cond_3

    .line 1116
    aget-object v2, p0, v0

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1117
    invoke-virtual {p1, p2, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    if-le p0, p1, :cond_1

    move v1, p1

    :cond_1
    return v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    const-string p0, "MainClear"

    const-string p1, "Can\'t find package, probably uninstalled."

    .line 1121
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v1
.end method

.method private synthetic lambda$loadAccountList$0()Ljava/lang/String;
    .locals 1

    .line 866
    sget v0, Lcom/android/settings/R$string;->category_work:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$loadAccountList$1()Ljava/lang/String;
    .locals 1

    .line 869
    sget v0, Lcom/android/settings/R$string;->category_personal:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$onCreateView$2(Landroid/content/DialogInterface;)V
    .locals 0

    .line 956
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private loadAccountList(Landroid/os/UserManager;)V
    .locals 24

    move-object/from16 v1, p0

    .line 818
    iget-object v0, v1, Lcom/android/settings/MainClear;->mContentView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->accounts_label:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 819
    iget-object v0, v1, Lcom/android/settings/MainClear;->mContentView:Landroid/view/View;

    sget v3, Lcom/android/settings/R$id;->accounts:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/widget/LinearLayout;

    .line 820
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 822
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    .line 823
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    move-object/from16 v5, p1

    invoke-virtual {v5, v0}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v6

    .line 824
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    .line 826
    invoke-static {v4}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v8

    const-string v0, "layout_inflater"

    .line 828
    invoke-virtual {v4, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/view/LayoutInflater;

    const/4 v0, 0x0

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v7, :cond_d

    .line 833
    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/UserInfo;

    .line 834
    iget v14, v13, Landroid/content/pm/UserInfo;->id:I

    .line 835
    new-instance v15, Landroid/os/UserHandle;

    invoke-direct {v15, v14}, Landroid/os/UserHandle;-><init>(I)V

    .line 838
    invoke-static {v14}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v16

    if-nez v16, :cond_c

    invoke-virtual {v13}, Landroid/content/pm/UserInfo;->isDualAppProfile()Z

    move-result v16

    if-eqz v16, :cond_0

    goto/16 :goto_c

    .line 842
    :cond_0
    invoke-virtual {v8, v14}, Landroid/accounts/AccountManager;->getAccountsAsUser(I)[Landroid/accounts/Account;

    move-result-object v10

    .line 843
    array-length v12, v10

    if-nez v12, :cond_1

    goto/16 :goto_c

    :cond_1
    add-int v17, v0, v12

    .line 849
    invoke-static {v4}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 850
    invoke-virtual {v0, v14}, Landroid/accounts/AccountManager;->getAuthenticatorTypesAsUser(I)[Landroid/accounts/AuthenticatorDescription;

    move-result-object v5

    move-object/from16 v18, v6

    .line 851
    array-length v6, v5

    move-object/from16 v19, v8

    const/4 v8, 0x1

    if-le v7, v8, :cond_3

    .line 854
    invoke-static {v9, v3}, Lcom/android/settings/Utils;->inflateCategoryHeader(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v8, 0x1020016

    .line 859
    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    move-object/from16 v8, v20

    check-cast v8, Landroid/widget/TextView;

    move/from16 v20, v7

    .line 861
    const-class v7, Landroid/app/admin/DevicePolicyManager;

    .line 862
    invoke-virtual {v4, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/admin/DevicePolicyManager;

    .line 864
    invoke-virtual {v13}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 865
    invoke-virtual {v7}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v7

    new-instance v13, Lcom/android/settings/MainClear$$ExternalSyntheticLambda1;

    invoke-direct {v13, v1}, Lcom/android/settings/MainClear$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/MainClear;)V

    move-object/from16 v21, v2

    const-string v2, "Settings.WORK_CATEGORY_HEADER"

    invoke-virtual {v7, v2, v13}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    move-object/from16 v21, v2

    .line 868
    invoke-virtual {v7}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v2

    new-instance v7, Lcom/android/settings/MainClear$$ExternalSyntheticLambda2;

    invoke-direct {v7, v1}, Lcom/android/settings/MainClear$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/MainClear;)V

    const-string v13, "Settings.PERSONAL_CATEGORY_HEADER"

    invoke-virtual {v2, v13, v7}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 871
    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_2

    :cond_3
    move-object/from16 v21, v2

    move/from16 v20, v7

    :goto_2
    const/4 v2, 0x0

    :goto_3
    if-ge v2, v12, :cond_a

    .line 875
    aget-object v7, v10, v2

    const/4 v0, 0x0

    :goto_4
    if-ge v0, v6, :cond_5

    .line 878
    iget-object v13, v7, Landroid/accounts/Account;->type:Ljava/lang/String;

    aget-object v8, v5, v0

    iget-object v8, v8, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 879
    aget-object v0, v5, v0

    move-object v8, v0

    goto :goto_5

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_5
    const/4 v8, 0x0

    :goto_5
    const-string v13, "MainClear"

    if-nez v8, :cond_6

    .line 884
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No descriptor for account name="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v7, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " type="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v7, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v22, v5

    move/from16 v23, v6

    const v5, 0x1020016

    goto/16 :goto_b

    .line 890
    :cond_6
    :try_start_0
    iget v0, v8, Landroid/accounts/AuthenticatorDescription;->iconId:I

    if-eqz v0, :cond_8

    .line 891
    iget-object v0, v8, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    move-object/from16 v22, v5

    const/4 v5, 0x0

    :try_start_1
    invoke-virtual {v4, v0, v5, v15}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    .line 894
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move/from16 v23, v6

    .line 895
    :try_start_2
    iget-object v6, v8, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->semShouldPackIntoIconTray(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 896
    iget v6, v8, Landroid/accounts/AuthenticatorDescription;->iconId:I

    invoke-virtual {v0, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v6, 0x1

    invoke-virtual {v5, v0, v6}, Landroid/content/pm/PackageManager;->semGetDrawableForIconTray(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v5, v0, v15}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_6

    :cond_7
    const/4 v6, 0x1

    .line 900
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iget v6, v8, Landroid/accounts/AuthenticatorDescription;->iconId:I

    .line 901
    invoke-virtual {v0, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 900
    invoke-virtual {v5, v0, v15}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_6
    move-object v8, v0

    goto :goto_a

    :catch_0
    move-exception v0

    goto :goto_8

    :catch_1
    move-exception v0

    goto :goto_7

    :cond_8
    move-object/from16 v22, v5

    move/from16 v23, v6

    goto :goto_9

    :catch_2
    move-exception v0

    move-object/from16 v22, v5

    :goto_7
    move/from16 v23, v6

    .line 907
    :goto_8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid icon id for account type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v8, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v13, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    :catch_3
    move-object/from16 v22, v5

    :catch_4
    move/from16 v23, v6

    .line 905
    :catch_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad package name for account type "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v8, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_9
    const/4 v8, 0x0

    :goto_a
    if-nez v8, :cond_9

    .line 910
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 914
    :cond_9
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v5, Lcom/android/settings/R$dimen;->sec_widget_list_app_icon_size:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const/4 v5, 0x0

    .line 915
    invoke-virtual {v8, v5, v5, v0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 918
    sget v0, Lcom/android/settings/R$layout;->sec_main_clear_account:I

    invoke-virtual {v9, v0, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v5, 0x1020006

    .line 919
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v5, 0x1020016

    .line 920
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iget-object v7, v7, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 921
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :goto_b
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v5, v22

    move/from16 v6, v23

    goto/16 :goto_3

    :cond_a
    if-nez v14, :cond_b

    .line 926
    invoke-static {v4}, Lcom/samsung/android/app/SemDualAppManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/SemDualAppManager;

    move-result-object v0

    sget v2, Lcom/android/settings/R$layout;->sec_main_clear_account:I

    sget v5, Lcom/android/settings/R$dimen;->sec_widget_list_app_icon_size:I

    invoke-virtual {v0, v3, v2, v5}, Lcom/samsung/android/app/SemDualAppManager;->addDualAppAccounts(Landroid/widget/LinearLayout;II)V

    :cond_b
    move/from16 v0, v17

    goto :goto_d

    :cond_c
    :goto_c
    move-object/from16 v21, v2

    move-object/from16 v18, v6

    move/from16 v20, v7

    move-object/from16 v19, v8

    :goto_d
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v5, p1

    move-object/from16 v6, v18

    move-object/from16 v8, v19

    move/from16 v7, v20

    move-object/from16 v2, v21

    goto/16 :goto_0

    :cond_d
    move-object/from16 v21, v2

    move/from16 v20, v7

    if-lez v0, :cond_e

    move-object/from16 v2, v21

    const/4 v4, 0x0

    .line 932
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 933
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_e

    :cond_e
    const/4 v4, 0x0

    .line 936
    :goto_e
    iget-object v0, v1, Lcom/android/settings/MainClear;->mContentView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->other_users_present:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 937
    invoke-virtual/range {p1 .. p1}, Landroid/os/UserManager;->getUserCount()I

    move-result v1

    sub-int v1, v1, v20

    if-lez v1, :cond_f

    const/4 v12, 0x1

    goto :goto_f

    :cond_f
    move v12, v4

    :goto_f
    if-eqz v12, :cond_10

    move v10, v4

    goto :goto_10

    :cond_10
    const/16 v10, 0x8

    .line 938
    :goto_10
    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private runKeyguardConfirmation(I)Z
    .locals 3

    .line 236
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 237
    new-instance v1, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    .line 238
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;-><init>(Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V

    .line 239
    invoke-virtual {v1, p1}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setRequestCode(I)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->main_clear_short_title:I

    .line 240
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object p0

    .line 241
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->show()Z

    move-result p0

    return p0
.end method

.method private setPreloadAppsResetOption(I)V
    .locals 2

    .line 1282
    iput p1, p0, Lcom/android/settings/MainClear;->mPreloadAppsRestoreOption:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 1291
    :cond_0
    iget-object p1, p0, Lcom/android/settings/MainClear;->mAllPreloadApps:Landroid/widget/RadioButton;

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 1292
    iget-object p1, p0, Lcom/android/settings/MainClear;->mExceptRemovedApps:Landroid/widget/RadioButton;

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 1293
    iget-object p1, p0, Lcom/android/settings/MainClear;->mPreloadAppsRestoreDescription:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->preload_apps_restore_option_except_removed_apps_desc:I

    .line 1294
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 1293
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1285
    :cond_1
    iget-object p1, p0, Lcom/android/settings/MainClear;->mAllPreloadApps:Landroid/widget/RadioButton;

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 1286
    iget-object p1, p0, Lcom/android/settings/MainClear;->mExceptRemovedApps:Landroid/widget/RadioButton;

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 1287
    iget-object p1, p0, Lcom/android/settings/MainClear;->mPreloadAppsRestoreDescription:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->preload_apps_restore_option_all_apps_desc:I

    .line 1288
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 1287
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private showResetBatteryCheckDialog()V
    .locals 7

    .line 1300
    iget-object v0, p0, Lcom/android/settings/MainClear;->mResetBatteryLevelCheckDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 1303
    iput-object v0, p0, Lcom/android/settings/MainClear;->mResetBatteryLevelCheckDialog:Landroidx/appcompat/app/AlertDialog;

    .line 1304
    new-instance v0, Lcom/android/settings/MainClear$9;

    invoke-direct {v0, p0}, Lcom/android/settings/MainClear$9;-><init>(Lcom/android/settings/MainClear;)V

    .line 1311
    new-instance v1, Lcom/android/settings/MainClear$10;

    invoke-direct {v1, p0}, Lcom/android/settings/MainClear$10;-><init>(Lcom/android/settings/MainClear;)V

    .line 1318
    new-instance v2, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    sget v4, Lcom/android/settings/R$string;->sec_icon_glossary_battery_battery_low:I

    .line 1319
    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    sget v4, Lcom/android/settings/R$string;->master_clear_not_enough_battery:I

    .line 1320
    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/16 v6, 0xa

    .line 1321
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v5

    .line 1320
    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    sget v3, Lcom/android/settings/R$string;->sec_common_ok:I

    .line 1322
    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 1323
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MainClear;->mResetBatteryLevelCheckDialog:Landroidx/appcompat/app/AlertDialog;

    .line 1324
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method


# virtual methods
.method establishInitialState()V
    .locals 11

    .line 488
    iget-object v0, p0, Lcom/android/settings/MainClear;->mContentView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->initiate_main_clear:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/MainClear;->mInitiateButton:Landroid/widget/Button;

    .line 489
    iget-object v1, p0, Lcom/android/settings/MainClear;->mInitiateListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 492
    iget-object v0, p0, Lcom/android/settings/MainClear;->mContentView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->erase_external_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MainClear;->mExternalStorageContainer:Landroid/view/View;

    .line 493
    iget-object v0, p0, Lcom/android/settings/MainClear;->mContentView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->erase_external:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/settings/MainClear;->mExternalStorage:Landroid/widget/CheckBox;

    .line 494
    iget-object v0, p0, Lcom/android/settings/MainClear;->mContentView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->erase_esim_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MainClear;->mEsimStorageContainer:Landroid/view/View;

    .line 495
    iget-object v0, p0, Lcom/android/settings/MainClear;->mContentView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->erase_esim:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/settings/MainClear;->mEsimStorage:Landroid/widget/CheckBox;

    .line 497
    iget-boolean v1, p0, Lcom/android/settings/MainClear;->mEsimCheckDefaultVal:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 504
    iget-object v0, p0, Lcom/android/settings/MainClear;->mContentView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->main_clear_scrollview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/core/widget/NestedScrollView;

    iput-object v0, p0, Lcom/android/settings/MainClear;->mScrollView:Landroidx/core/widget/NestedScrollView;

    const/4 v1, 0x3

    .line 506
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->semSetRoundedCorners(I)V

    .line 507
    iget-object v0, p0, Lcom/android/settings/MainClear;->mScrollView:Landroidx/core/widget/NestedScrollView;

    .line 508
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$color;->sec_widget_round_and_bgcolor:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 507
    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->semSetRoundedCornerColor(II)V

    .line 509
    iget-object v0, p0, Lcom/android/settings/MainClear;->mContentView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->smartswitch_tip_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/settings/MainClear;->mSmartSwitchTipLayout:Landroid/widget/LinearLayout;

    .line 510
    sget-boolean v1, Lcom/samsung/android/settings/Rune;->SUPPORT_DISABLE_ACCOUNTS_SETTINGS:Z

    const/16 v2, 0x8

    if-eqz v1, :cond_0

    .line 511
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 522
    :cond_0
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_2

    .line 524
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-direct {p0}, Lcom/android/settings/MainClear;->isExtStorageEncrypted()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 572
    :cond_1
    iget-object v1, p0, Lcom/android/settings/MainClear;->mExternalStorageContainer:Landroid/view/View;

    new-instance v4, Lcom/android/settings/MainClear$2;

    invoke-direct {v4, p0}, Lcom/android/settings/MainClear$2;-><init>(Lcom/android/settings/MainClear;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_3

    .line 525
    :cond_2
    :goto_0
    iget-object v4, p0, Lcom/android/settings/MainClear;->mExternalStorageContainer:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 527
    iget-object v4, p0, Lcom/android/settings/MainClear;->mContentView:Landroid/view/View;

    sget v5, Lcom/android/settings/R$id;->erase_external_option_text:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 528
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 530
    iget-object v4, p0, Lcom/android/settings/MainClear;->mContentView:Landroid/view/View;

    sget v5, Lcom/android/settings/R$id;->also_erases_external:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 531
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 535
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "\u2022 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/android/settings/R$string;->master_clear_desc_system_and_app_data:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\n"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/android/settings/R$string;->master_clear_desc_device_settings:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 537
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/android/settings/R$string;->master_clear_desc_downloaded_apps:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/android/settings/R$string;->master_clear_desc_music:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 539
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/android/settings/R$string;->master_clear_desc_pictures:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 540
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/android/settings/R$string;->master_clear_desc_other_user_data:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 541
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/android/settings/R$string;->master_clear_desc_service_provider_apps_and_content:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 543
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/android/settings/R$string;->master_clear_desc_google_account:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 545
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaModel()Z

    move-result v8

    if-nez v8, :cond_4

    if-eqz v1, :cond_3

    goto :goto_1

    .line 548
    :cond_3
    check-cast v4, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 546
    :cond_4
    :goto_1
    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 552
    :goto_2
    invoke-static {}, Lcom/samsung/android/security/SemSdCardEncryption;->isEncryptionFeatureEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 553
    iget-object v1, p0, Lcom/android/settings/MainClear;->mContentView:Landroid/view/View;

    sget v4, Lcom/android/settings/R$id;->also_erases_external_encrypted:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 554
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v7, Lcom/android/settings/R$string;->sdcard_settings_factory_reset_warning:I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 555
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 556
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 560
    :cond_5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/general/GeneralUtils;->hasSamsungBlockchainKeystorePKG(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 561
    iget-object v1, p0, Lcom/android/settings/MainClear;->mContentView:Landroid/view/View;

    sget v4, Lcom/android/settings/R$id;->also_erases_external_block_chain:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 562
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/settings/R$string;->master_clear_desc_block_chain:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 563
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 564
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 570
    :cond_6
    iget-object v1, p0, Lcom/android/settings/MainClear;->mExternalStorage:Landroid/widget/CheckBox;

    xor-int/lit8 v4, v0, 0x1

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 606
    :goto_3
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string v4, "CscFeature_RIL_SupportEsim"

    invoke-virtual {v1, v4, v3}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 607
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string v4, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_EMBEDDED_SIM"

    invoke-virtual {v1, v4, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 608
    iget-object v1, p0, Lcom/android/settings/MainClear;->mContentView:Landroid/view/View;

    sget v4, Lcom/android/settings/R$id;->erase_esim_title:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 609
    sget v4, Lcom/android/settings/R$string;->erase_esim_storage:I

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 610
    invoke-static {}, Lcom/samsung/android/settings/general/GeneralUtils;->isNAEsimResetConcept()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 611
    iget-object v1, p0, Lcom/android/settings/MainClear;->mEsimStorageContainer:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 613
    :cond_7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/general/GeneralUtils;->isEsimEmbedded(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 614
    iget-object v1, p0, Lcom/android/settings/MainClear;->mEsimStorageContainer:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 616
    :cond_8
    iget-object v1, p0, Lcom/android/settings/MainClear;->mEsimStorageContainer:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 619
    :goto_4
    iget-object v1, p0, Lcom/android/settings/MainClear;->mEsimStorageContainer:Landroid/view/View;

    new-instance v2, Lcom/android/settings/MainClear$3;

    invoke-direct {v2, p0}, Lcom/android/settings/MainClear$3;-><init>(Lcom/android/settings/MainClear;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 631
    :cond_9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string/jumbo v2, "user"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 632
    invoke-direct {p0, v1}, Lcom/android/settings/MainClear;->loadAccountList(Landroid/os/UserManager;)V

    .line 636
    invoke-static {}, Lcom/samsung/android/settings/Rune;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ATT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_a

    invoke-static {}, Lcom/samsung/android/settings/Rune;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    const-string v4, "AIO"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isSprModel()Z

    move-result v1

    if-nez v1, :cond_a

    invoke-static {}, Lcom/samsung/android/settings/Rune;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    const-string v4, "VZW"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    :cond_a
    if-eqz v0, :cond_d

    .line 637
    iget-object v0, p0, Lcom/android/settings/MainClear;->mContentView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->erase_external_storage_textview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 638
    sget v1, Lcom/android/settings/R$string;->erase_external_storage_sd:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 639
    iget-object v0, p0, Lcom/android/settings/MainClear;->mContentView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->erase_external_storage_description_textview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 640
    sget v1, Lcom/android/settings/R$string;->erase_external_storage_description_sd:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 642
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string/jumbo v1, "storage"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 643
    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    move-result-object v0

    .line 645
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/VolumeInfo;

    if-eqz v1, :cond_b

    .line 646
    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v4

    if-nez v4, :cond_b

    .line 647
    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v4

    if-eqz v4, :cond_b

    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/storage/DiskInfo;->isSd()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->isMountedWritable()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 648
    iput-boolean v2, p0, Lcom/android/settings/MainClear;->mCanEraseExternalOnFuseSystem:Z

    .line 649
    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getDiskId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MainClear;->mStrSdVolumeId:Ljava/lang/String;

    .line 655
    :cond_c
    iget-boolean v0, p0, Lcom/android/settings/MainClear;->mCanEraseExternalOnFuseSystem:Z

    if-eqz v0, :cond_d

    .line 656
    iget-object v0, p0, Lcom/android/settings/MainClear;->mExternalStorageContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 657
    iget-object v0, p0, Lcom/android/settings/MainClear;->mExternalStorageContainer:Landroid/view/View;

    new-instance v1, Lcom/android/settings/MainClear$4;

    invoke-direct {v1, p0}, Lcom/android/settings/MainClear$4;-><init>(Lcom/android/settings/MainClear;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_d
    const-string v0, "ro.config.rm_preload_enabled"

    .line 667
    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_e

    .line 668
    invoke-direct {p0}, Lcom/android/settings/MainClear;->addDescriptionForRemovingPreloadApp()V

    .line 671
    :cond_e
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Setting_SupportPreInstallerSkipUserDeletedApp"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 672
    iget-object v0, p0, Lcom/android/settings/MainClear;->mContentView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->preload_apps_restore_option:I

    .line 673
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/settings/MainClear;->mPreloadAppsRestoreOptionLayout:Landroid/widget/LinearLayout;

    .line 674
    iget-object v0, p0, Lcom/android/settings/MainClear;->mContentView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->all_preload_apps_layout:I

    .line 675
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/settings/MainClear;->mAllPreloadAppsLayout:Landroid/widget/LinearLayout;

    .line 676
    iget-object v0, p0, Lcom/android/settings/MainClear;->mContentView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->except_removed_apps_layout:I

    .line 677
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/settings/MainClear;->mExceptRemovedAppsLayout:Landroid/widget/LinearLayout;

    .line 678
    iget-object v0, p0, Lcom/android/settings/MainClear;->mContentView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->all_preload_apps:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/android/settings/MainClear;->mAllPreloadApps:Landroid/widget/RadioButton;

    .line 679
    iget-object v0, p0, Lcom/android/settings/MainClear;->mContentView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->except_removed_apps:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/android/settings/MainClear;->mExceptRemovedApps:Landroid/widget/RadioButton;

    .line 680
    iget-object v0, p0, Lcom/android/settings/MainClear;->mContentView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->preloaded_apps_restore_desc:I

    .line 681
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/MainClear;->mPreloadAppsRestoreDescription:Landroid/widget/TextView;

    .line 683
    iget-object v0, p0, Lcom/android/settings/MainClear;->mPreloadAppsRestoreOptionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 685
    invoke-direct {p0, v3}, Lcom/android/settings/MainClear;->setPreloadAppsResetOption(I)V

    .line 687
    iget-object v0, p0, Lcom/android/settings/MainClear;->mAllPreloadAppsLayout:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/settings/MainClear$5;

    invoke-direct {v1, p0}, Lcom/android/settings/MainClear$5;-><init>(Lcom/android/settings/MainClear;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 695
    iget-object v0, p0, Lcom/android/settings/MainClear;->mExceptRemovedAppsLayout:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/settings/MainClear$6;

    invoke-direct {v1, p0}, Lcom/android/settings/MainClear$6;-><init>(Lcom/android/settings/MainClear;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 704
    :cond_f
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 705
    iget-object v1, p0, Lcom/android/settings/MainClear;->mContentView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->main_clear_container:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0xc

    .line 708
    invoke-virtual {v1, v2}, Landroid/view/View;->semSetRoundedCorners(I)V

    .line 710
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/settings/R$color;->sec_widget_round_and_bgcolor:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 709
    invoke-virtual {v1, v2, v3}, Landroid/view/View;->semSetRoundedCornerColor(II)V

    .line 713
    invoke-direct {p0, v1, v0}, Lcom/android/settings/MainClear;->getContentDescription(Landroid/view/View;Ljava/lang/StringBuffer;)V

    .line 714
    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method getAccountConfirmationIntent()Landroid/content/Intent;
    .locals 6

    .line 365
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    .line 366
    sget v0, Lcom/android/settings/R$string;->account_type:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 367
    sget v1, Lcom/android/settings/R$string;->account_confirmation_package:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 368
    sget v2, Lcom/android/settings/R$string;->account_confirmation_class:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 369
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    const-string v5, "MainClear"

    if-nez v3, :cond_3

    .line 370
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 371
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 375
    :cond_0
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v3

    .line 376
    invoke-virtual {v3, v0}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 377
    array-length v3, v3

    if-lez v3, :cond_2

    .line 378
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 379
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    new-instance v3, Landroid/content/ComponentName;

    invoke-direct {v3, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 382
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v3, 0x0

    .line 383
    invoke-virtual {p0, v0, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 384
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz p0, :cond_1

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 386
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    return-object v0

    .line 391
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to resolve Activity: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 394
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " accounts installed!"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v4

    :cond_3
    :goto_1
    const-string p0, "Resources not set for account confirmation."

    .line 372
    invoke-static {v5, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x42

    return p0
.end method

.method hasReachedBottom(Landroidx/core/widget/NestedScrollView;)Z
    .locals 3

    .line 765
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p0

    const/4 v0, 0x1

    if-ge p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    .line 769
    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 770
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result p1

    add-int/2addr v2, p1

    sub-int/2addr v1, v2

    if-gtz v1, :cond_1

    goto :goto_0

    :cond_1
    move v0, p0

    :goto_0
    return v0
.end method

.method protected isEuiccEnabled(Landroid/content/Context;)Z
    .locals 0

    const-string p0, "euicc"

    .line 759
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/euicc/EuiccManager;

    .line 760
    invoke-virtual {p0}, Landroid/telephony/euicc/EuiccManager;->isEnabled()Z

    move-result p0

    return p0
.end method

.method isValidRequestCode(I)Z
    .locals 0

    const/16 p0, 0x37

    if-eq p1, p0, :cond_1

    const/16 p0, 0x38

    if-eq p1, p0, :cond_1

    const/16 p0, 0x3a

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method isValidRequestCode(II)Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x38

    if-ne p1, v1, :cond_1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 259
    iput-boolean v0, p0, Lcom/android/settings/MainClear;->mPinConfirmed:Z

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 269
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 270
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/settings/MainClear;->onActivityResultInternal(IILandroid/content/Intent;)V

    return-void
.end method

.method onActivityResultInternal(IILandroid/content/Intent;)V
    .locals 0

    .line 279
    invoke-virtual {p0, p1}, Lcom/android/settings/MainClear;->isValidRequestCode(I)Z

    move-result p3

    if-nez p3, :cond_0

    .line 280
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/MainClear;->isValidRequestCode(II)Z

    move-result p3

    if-nez p3, :cond_0

    .line 281
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-class p1, Lcom/android/settings/MainClear;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " blocked by isValidRequestCode "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MainClear"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/16 p3, 0x37

    if-eq p1, p3, :cond_2

    const/16 p3, 0x3a

    if-eq p1, p3, :cond_2

    const/16 p2, 0x38

    if-eq p2, p1, :cond_1

    .line 308
    invoke-virtual {p0}, Lcom/android/settings/MainClear;->getAccountConfirmationIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 309
    invoke-virtual {p0, p1}, Lcom/android/settings/MainClear;->showAccountCredentialConfirmation(Landroid/content/Intent;)V

    goto :goto_0

    .line 311
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/MainClear;->showFinalConfirmation()V

    :goto_0
    return-void

    :cond_2
    const/4 p1, -0x1

    if-ne p2, p1, :cond_3

    .line 288
    invoke-virtual {p0}, Lcom/android/settings/MainClear;->showFinalConfirmation()V

    goto :goto_1

    .line 290
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/MainClear;->establishInitialState()V

    :goto_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .line 944
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 946
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p3

    const-string v0, "no_factory_reset"

    .line 945
    invoke-static {p2, v0, p3}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p3

    .line 947
    invoke-static {p2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    .line 948
    invoke-virtual {v1}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 950
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    .line 949
    invoke-static {p2, v0, v1}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 951
    invoke-static {p2}, Lcom/android/settings/Utils;->isDemoUser(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 952
    sget p0, Lcom/android/settings/R$layout;->main_clear_disallowed_screen:I

    invoke-virtual {p1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_2
    if-eqz p3, :cond_3

    .line 954
    new-instance p1, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;-><init>(Landroid/app/Activity;)V

    .line 955
    invoke-virtual {p1, v0, p3}, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->prepareDialogBuilder(Ljava/lang/String;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lcom/android/settings/MainClear$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/settings/MainClear$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/MainClear;)V

    .line 956
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 957
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    .line 958
    new-instance p1, Landroid/view/View;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {p1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object p1

    .line 960
    :cond_3
    sget-boolean p2, Lcom/samsung/android/settings/Rune;->FEATURE_ESIM_CHECKBOX_DEFAULT_VALUE:Z

    iput-boolean p2, p0, Lcom/android/settings/MainClear;->mEsimCheckDefaultVal:Z

    .line 961
    sget p2, Lcom/android/settings/R$layout;->sec_main_clear:I

    invoke-virtual {p1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/MainClear;->mContentView:Landroid/view/View;

    .line 963
    sget p2, Lcom/android/settings/R$id;->tips_description:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/MainClear;->mDescriptionView:Landroid/widget/TextView;

    .line 965
    invoke-virtual {p0}, Lcom/android/settings/MainClear;->establishInitialState()V

    .line 968
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-class p2, Lcom/android/settings/MainClear;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "onCreateView "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MainClear"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    invoke-direct {p0}, Lcom/android/settings/MainClear;->addSmartSwitchTipView()V

    .line 971
    iget-object p0, p0, Lcom/android/settings/MainClear;->mContentView:Landroid/view/View;

    return-object p0
.end method

.method public onDestroy()V
    .locals 0

    .line 1340
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->onDestroy()V

    .line 1341
    iget-object p0, p0, Lcom/android/settings/MainClear;->mResetBatteryLevelCheckDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz p0, :cond_0

    .line 1342
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public onGlobalLayout()V
    .locals 2

    .line 208
    iget-object v0, p0, Lcom/android/settings/MainClear;->mInitiateButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/MainClear;->mScrollView:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {p0, v1}, Lcom/android/settings/MainClear;->hasReachedBottom(Landroidx/core/widget/NestedScrollView;)Z

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1169
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->onPause()V

    .line 1172
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/MainClear;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1174
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p0, "MainClear"

    const-string v0, "no BatteryReceiver"

    .line 1175
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 5

    .line 1137
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedFragment;->onResume()V

    .line 1139
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/MainClear;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1142
    invoke-direct {p0}, Lcom/android/settings/MainClear;->checkReactivationLock()Z

    move-result v0

    const-string v1, "lock_my_mobile"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 1143
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 1145
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1149
    :goto_0
    iget-boolean v0, p0, Lcom/android/settings/MainClear;->mPinConfirmed:Z

    if-eqz v0, :cond_1

    .line 1150
    iput-boolean v3, p0, Lcom/android/settings/MainClear;->mPinConfirmed:Z

    const/16 v0, 0x37

    .line 1151
    invoke-direct {p0, v0}, Lcom/android/settings/MainClear;->runKeyguardConfirmation(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1152
    invoke-virtual {p0}, Lcom/android/settings/MainClear;->showFinalConfirmation()V

    .line 1158
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "content://com.sec.knox.provider/RestrictionPolicy1"

    const-string v4, "isFactoryResetAllowed"

    invoke-static {v0, v1, v4}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1159
    iget-object p0, p0, Lcom/android/settings/MainClear;->mInitiateButton:Landroid/widget/Button;

    if-eqz p0, :cond_3

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    if-ne v0, v2, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    .line 1160
    :goto_1
    invoke-virtual {p0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_3
    return-void
.end method

.method showAccountCredentialConfirmation(Landroid/content/Intent;)V
    .locals 1

    const/16 v0, 0x38

    .line 360
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method showFinalConfirmation()V
    .locals 4

    .line 317
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 318
    iget-object v1, p0, Lcom/android/settings/MainClear;->mExternalStorage:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    const-string v2, "erase_sd"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 319
    sget-boolean v1, Lcom/samsung/android/settings/Rune;->FEATURE_NA_ESIM_RESET:Z

    const-string v2, "erase_esim"

    if-eqz v1, :cond_0

    .line 320
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/general/GeneralUtils;->isEsimEmbedded(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1

    .line 322
    :cond_0
    iget-object v1, p0, Lcom/android/settings/MainClear;->mEsimStorage:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/MainClear;->mEsimStorageContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 326
    :goto_1
    iget-object v1, p0, Lcom/android/settings/MainClear;->mStrSdVolumeId:Ljava/lang/String;

    const-string v2, "erase_sd_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v2, "hiddenmenu"

    .line 329
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 330
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Intent is not null : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MainClear"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    :cond_2
    iget-boolean v1, p0, Lcom/android/settings/MainClear;->mCanEraseExternalOnFuseSystem:Z

    const-string v2, "can_erase_sd_on_fuse"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 335
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Setting_SupportPreInstallerSkipUserDeletedApp"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 336
    iget v1, p0, Lcom/android/settings/MainClear;->mPreloadAppsRestoreOption:I

    const-string v2, "preload_apps_restore_option"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 339
    :cond_3
    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v2, Lcom/android/settings/MainClearConfirm;

    .line 340
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    .line 341
    invoke-virtual {v1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->sec_master_clear_title:I

    .line 342
    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    .line 343
    invoke-virtual {p0}, Lcom/android/settings/MainClear;->getMetricsCategory()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 344
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method

.method showWipeEuicc()Z
    .locals 3

    .line 742
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 743
    invoke-virtual {p0, v0}, Lcom/android/settings/MainClear;->isEuiccEnabled(Landroid/content/Context;)Z

    move-result p0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return v1

    .line 746
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v2, "euicc_provisioned"

    .line 747
    invoke-static {p0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_1

    .line 748
    invoke-static {v0}, Lcom/android/settingslib/development/DevelopmentSettingsEnabler;->isDevelopmentSettingsEnabled(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method showWipeEuiccCheckbox()Z
    .locals 1

    const-string p0, "masterclear.allow_retain_esim_profiles_after_fdr"

    const/4 v0, 0x0

    .line 754
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method
