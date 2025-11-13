.class public Lcom/android/internal/app/UnknownSourcePhishingActivity;
.super Landroid/app/Activity;
.source "UnknownSourcePhishingActivity.java"


# static fields
.field private static final blacklist AASA_DIR:Ljava/lang/String; = "/data/system/.aasa/AASApolicy/"

.field private static final blacklist AASA_ENG_BLOCK_FILE:Ljava/lang/String; = "ASKS_UNKNOWN_BLOCK_DETAIL_ENG.html"

.field private static final blacklist AASA_ENG_WARN_FILE:Ljava/lang/String; = "ASKS_UNKNOWN_WARNING_DETAIL_ENG.html"

.field private static final blacklist AASA_KOR_BLOCK_FILE_0:Ljava/lang/String; = "ASKS_UNKNOWN_BLOCK_DETAIL_0.html"

.field private static final blacklist AASA_KOR_BLOCK_FILE_1:Ljava/lang/String; = "ASKS_UNKNOWN_BLOCK_DETAIL_1.html"

.field private static final blacklist AASA_KOR_BLOCK_FILE_2:Ljava/lang/String; = "ASKS_UNKNOWN_BLOCK_DETAIL_2.html"

.field private static final blacklist AASA_KOR_BLOCK_FILE_3:Ljava/lang/String; = "ASKS_UNKNOWN_BLOCK_DETAIL_3.html"

.field private static final blacklist AASA_KOR_BLOCK_FILE_4:Ljava/lang/String; = "ASKS_UNKNOWN_BLOCK_DETAIL_4.html"

.field private static final blacklist AASA_KOR_WARN_FILE_0:Ljava/lang/String; = "ASKS_UNKNOWN_WARNING_DETAIL_0.html"

.field private static final blacklist AASA_KOR_WARN_FILE_1:Ljava/lang/String; = "ASKS_UNKNOWN_WARNING_DETAIL_1.html"

.field private static final blacklist AASA_KOR_WARN_FILE_2:Ljava/lang/String; = "ASKS_UNKNOWN_WARNING_DETAIL_2.html"

.field private static final blacklist AASA_KOR_WARN_FILE_3:Ljava/lang/String; = "ASKS_UNKNOWN_WARNING_DETAIL_3.html"

.field private static final blacklist AASA_KOR_WARN_FILE_4:Ljava/lang/String; = "ASKS_UNKNOWN_WARNING_DETAIL_4.html"

.field private static final blacklist LANGUAGE_KOR:Ljava/lang/String; = "ko"

.field private static final blacklist TAG:Ljava/lang/String; = "UnknownSourceConfirmActivity"


# instance fields
.field private blacklist htmlMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mButtonClicked:Z

.field private blacklist mInstallType:I

.field private blacklist mSessionId:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 53
    new-instance v0, Lcom/android/internal/app/UnknownSourcePhishingActivity$1;

    invoke-direct {v0, p0}, Lcom/android/internal/app/UnknownSourcePhishingActivity$1;-><init>(Lcom/android/internal/app/UnknownSourcePhishingActivity;)V

    iput-object v0, p0, Lcom/android/internal/app/UnknownSourcePhishingActivity;->htmlMap:Ljava/util/HashMap;

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/UnknownSourcePhishingActivity;->mButtonClicked:Z

    return-void
.end method

.method private blacklist getHtmlText(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "file"    # Ljava/lang/String;

    .line 121
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/.aasa/AASApolicy/"

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    .local v0, "htmlFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UnknownSourceConfirmActivity"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 125
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    .local v1, "inputStream":Ljava/io/InputStream;
    :try_start_1
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 127
    .local v2, "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v3

    .line 128
    .local v3, "i":I
    :goto_0
    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 129
    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 130
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v4

    move v3, v4

    goto :goto_0

    .line 132
    :cond_0
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 133
    :try_start_3
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 132
    return-object v4

    .line 125
    .end local v3    # "i":I
    :catchall_0
    move-exception v3

    :try_start_5
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v4

    :try_start_6
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "htmlFile":Ljava/io/File;
    .end local v1    # "inputStream":Ljava/io/InputStream;
    .end local p0    # "this":Lcom/android/internal/app/UnknownSourcePhishingActivity;
    .end local p1    # "file":Ljava/lang/String;
    :goto_1
    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .end local v2    # "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "htmlFile":Ljava/io/File;
    .restart local v1    # "inputStream":Ljava/io/InputStream;
    .restart local p0    # "this":Lcom/android/internal/app/UnknownSourcePhishingActivity;
    .restart local p1    # "file":Ljava/lang/String;
    :catchall_2
    move-exception v2

    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v3

    :try_start_8
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "htmlFile":Ljava/io/File;
    .end local p0    # "this":Lcom/android/internal/app/UnknownSourcePhishingActivity;
    .end local p1    # "file":Ljava/lang/String;
    :goto_2
    throw v2
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    .line 133
    .end local v1    # "inputStream":Ljava/io/InputStream;
    .restart local v0    # "htmlFile":Ljava/io/File;
    .restart local p0    # "this":Lcom/android/internal/app/UnknownSourcePhishingActivity;
    .restart local p1    # "file":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 134
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 135
    const-string v2, ""

    return-object v2

    .line 138
    .end local v1    # "e":Ljava/io/IOException;
    :cond_1
    const-string v1, "No file exists"

    return-object v1
.end method

.method private blacklist rejectInstall()V
    .locals 3

    .line 156
    const-string v0, "UnknownSourceConfirmActivity"

    const-string v1, "Reject installing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-virtual {p0}, Lcom/android/internal/app/UnknownSourcePhishingActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/app/UnknownSourcePhishingActivity;->mSessionId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageInstaller;->setUnknownSourceConfirmResult(IZ)V

    .line 158
    return-void
.end method

.method private blacklist setContentView()V
    .locals 5

    .line 81
    const v0, 0x109002f

    invoke-virtual {p0, v0}, Lcom/android/internal/app/UnknownSourcePhishingActivity;->setContentView(I)V

    .line 83
    iget v0, p0, Lcom/android/internal/app/UnknownSourcePhishingActivity;->mInstallType:I

    const/16 v1, 0x7c

    const/16 v2, 0x78

    if-lt v0, v2, :cond_0

    if-gt v0, v1, :cond_0

    .line 85
    const v0, 0x1020380

    invoke-virtual {p0, v0}, Lcom/android/internal/app/UnknownSourcePhishingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 86
    .local v0, "installAnywayBtn":Landroid/widget/Button;
    const v3, 0x1020381

    invoke-virtual {p0, v3}, Lcom/android/internal/app/UnknownSourcePhishingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 87
    .local v3, "installDenyBtn":Landroid/widget/Button;
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 88
    const v4, 0x104000a

    invoke-virtual {p0, v4}, Lcom/android/internal/app/UnknownSourcePhishingActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 92
    .end local v0    # "installAnywayBtn":Landroid/widget/Button;
    .end local v3    # "installDenyBtn":Landroid/widget/Button;
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v3, "ko"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    iget-object v0, p0, Lcom/android/internal/app/UnknownSourcePhishingActivity;->htmlMap:Ljava/util/HashMap;

    iget v1, p0, Lcom/android/internal/app/UnknownSourcePhishingActivity;->mInstallType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .local v0, "file":Ljava/lang/String;
    goto :goto_0

    .line 95
    .end local v0    # "file":Ljava/lang/String;
    :cond_1
    iget v0, p0, Lcom/android/internal/app/UnknownSourcePhishingActivity;->mInstallType:I

    if-lt v0, v2, :cond_2

    if-gt v0, v1, :cond_2

    .line 96
    const-string v0, "ASKS_UNKNOWN_BLOCK_DETAIL_ENG.html"

    .restart local v0    # "file":Ljava/lang/String;
    goto :goto_0

    .line 98
    .end local v0    # "file":Ljava/lang/String;
    :cond_2
    const-string v0, "ASKS_UNKNOWN_WARNING_DETAIL_ENG.html"

    .line 102
    .restart local v0    # "file":Ljava/lang/String;
    :goto_0
    const v1, 0x1020684

    invoke-virtual {p0, v1}, Lcom/android/internal/app/UnknownSourcePhishingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 103
    .local v1, "view":Landroid/widget/TextView;
    invoke-direct {p0, v0}, Lcom/android/internal/app/UnknownSourcePhishingActivity;->getHtmlText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    return-void
.end method


# virtual methods
.method public whitelist onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 108
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 109
    invoke-direct {p0}, Lcom/android/internal/app/UnknownSourcePhishingActivity;->setContentView()V

    .line 110
    return-void
.end method

.method public whitelist onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 72
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    invoke-virtual {p0}, Lcom/android/internal/app/UnknownSourcePhishingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.content.pm.extra.SESSION_ID"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/UnknownSourcePhishingActivity;->mSessionId:I

    .line 75
    invoke-virtual {p0}, Lcom/android/internal/app/UnknownSourcePhishingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.content.pm.extra.unknown.installtype"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/UnknownSourcePhishingActivity;->mInstallType:I

    .line 77
    invoke-direct {p0}, Lcom/android/internal/app/UnknownSourcePhishingActivity;->setContentView()V

    .line 78
    return-void
.end method

.method public blacklist onInstallButtonClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 143
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/UnknownSourcePhishingActivity;->mButtonClicked:Z

    .line 145
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x1020380

    if-ne v1, v2, :cond_0

    .line 146
    const-string v1, "UnknownSourceConfirmActivity"

    const-string v2, "Allow installing"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-virtual {p0}, Lcom/android/internal/app/UnknownSourcePhishingActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/app/UnknownSourcePhishingActivity;->mSessionId:I

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageInstaller;->setUnknownSourceConfirmResult(IZ)V

    goto :goto_0

    .line 148
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x1020381

    if-ne v0, v1, :cond_1

    .line 149
    invoke-direct {p0}, Lcom/android/internal/app/UnknownSourcePhishingActivity;->rejectInstall()V

    .line 152
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/app/UnknownSourcePhishingActivity;->finish()V

    .line 153
    return-void
.end method

.method public whitelist onStop()V
    .locals 1

    .line 114
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 115
    iget-boolean v0, p0, Lcom/android/internal/app/UnknownSourcePhishingActivity;->mButtonClicked:Z

    if-nez v0, :cond_0

    .line 116
    invoke-direct {p0}, Lcom/android/internal/app/UnknownSourcePhishingActivity;->rejectInstall()V

    .line 118
    :cond_0
    return-void
.end method
