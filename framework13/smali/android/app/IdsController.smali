.class public final Landroid/app/IdsController;
.super Ljava/lang/Object;
.source "IdsController.java"


# static fields
.field private static final blacklist DO_IDS:I

.field private static final blacklist IDS_KEY:Ljava/lang/String; = "IDSCount"

.field private static final blacklist IDS_URI:Ljava/lang/String; = "android.app.ActivityThread.IDS"

.field private static final blacklist NO_IDS:I = -0x1

.field public static final blacklist REASON_BACKGROUND_CHANGED:I = 0x0

.field public static final blacklist REASON_BACKGROUND_COLOR_CHANGED:I = 0x1

.field public static final blacklist REASON_LAYOUT_CHANGED:I = 0x2

.field public static final blacklist REASON_SETCONTENTVIEW:I = 0x3

.field public static final blacklist REASON_VIEW_INFLATED:I = 0x4

.field private static final blacklist TAG:Ljava/lang/String; = "IDS_TAG"

.field private static blacklist clearData:Z


# instance fields
.field private blacklist ctx:Landroid/content/Context;

.field private blacklist hasUiUpdated:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private blacklist idsWindow:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 43
    const-string v0, "debug.ids.setWindowSize"

    const/16 v1, 0xa

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/app/IdsController;->DO_IDS:I

    .line 49
    const/4 v0, 0x0

    sput-boolean v0, Landroid/app/IdsController;->clearData:Z

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "app"    # Landroid/content/Context;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Landroid/app/IdsController;->ctx:Landroid/content/Context;

    .line 61
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Landroid/app/IdsController;->hasUiUpdated:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 62
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Landroid/app/IdsController;->idsWindow:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 63
    return-void
.end method

.method public static blacklist clearTrainingData(Z)V
    .locals 0
    .param p0, "flag"    # Z

    .line 160
    sput-boolean p0, Landroid/app/IdsController;->clearData:Z

    .line 161
    return-void
.end method

.method private blacklist getIdsSharedPreference()Landroid/content/SharedPreferences;
    .locals 4

    .line 165
    const-string v0, "IDS_TAG"

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Getting Shared Preference for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/app/IdsController;->ctx:Landroid/content/Context;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " uid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    const/16 v3, 0x3e8

    if-ne v2, v3, :cond_0

    .line 167
    const-string v2, "System UID: no SharedPreferences here, no IDS"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    return-object v1

    .line 170
    :cond_0
    iget-object v0, p0, Landroid/app/IdsController;->ctx:Landroid/content/Context;

    const-string v2, "android.app.ActivityThread.IDS"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 171
    :catch_0
    move-exception v0

    .line 172
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 174
    .end local v0    # "e":Ljava/lang/Exception;
    return-object v1
.end method

.method private blacklist getReasonForUpdate(I)Ljava/lang/String;
    .locals 1
    .param p1, "reason"    # I

    .line 206
    packed-switch p1, :pswitch_data_0

    .line 218
    const-string v0, "Invalid reason"

    return-object v0

    .line 216
    :pswitch_0
    const-string v0, "View Inflated"

    return-object v0

    .line 214
    :pswitch_1
    const-string/jumbo v0, "setContentView"

    return-object v0

    .line 212
    :pswitch_2
    const-string v0, "Layout Changed"

    return-object v0

    .line 210
    :pswitch_3
    const-string v0, "Background Color Changed"

    return-object v0

    .line 208
    :pswitch_4
    const-string v0, "Background Changed"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist getUiUpdated()Z
    .locals 1

    .line 187
    iget-object v0, p0, Landroid/app/IdsController;->hasUiUpdated:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method private blacklist isIdsWindowActive()Z
    .locals 1

    .line 223
    iget-object v0, p0, Landroid/app/IdsController;->idsWindow:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method private blacklist registerLayoutListener(Landroid/view/View;Landroid/view/Choreographer;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "mChoreographer"    # Landroid/view/Choreographer;

    .line 178
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Landroid/app/IdsController$1;

    invoke-direct {v1, p0}, Landroid/app/IdsController$1;-><init>(Landroid/app/IdsController;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 184
    return-void
.end method

.method private blacklist setIdsWindowActive(Z)V
    .locals 1
    .param p1, "active"    # Z

    .line 227
    iget-object v0, p0, Landroid/app/IdsController;->idsWindow:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 228
    return-void
.end method


# virtual methods
.method public blacklist closeIdsWindow()V
    .locals 6

    .line 99
    const-string v0, "IDSCount"

    const-string v1, "IDS_TAG"

    :try_start_0
    invoke-direct {p0}, Landroid/app/IdsController;->isIdsWindowActive()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 100
    const-string v2, "Closing IDS observe window"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Landroid/app/IdsController;->setIdsWindowActive(Z)V

    .line 102
    invoke-direct {p0}, Landroid/app/IdsController;->getIdsSharedPreference()Landroid/content/SharedPreferences;

    move-result-object v3

    .line 103
    .local v3, "sp":Landroid/content/SharedPreferences;
    if-eqz v3, :cond_1

    .line 104
    invoke-interface {v3, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 105
    .local v2, "idsCount":I
    sget v4, Landroid/app/IdsController;->DO_IDS:I

    if-ge v2, v4, :cond_1

    const/4 v4, -0x1

    if-eq v2, v4, :cond_1

    .line 106
    invoke-direct {p0}, Landroid/app/IdsController;->getUiUpdated()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 107
    const/4 v2, -0x1

    .line 108
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IDS disabled for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/app/IdsController;->ctx:Landroid/content/Context;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 110
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 112
    :goto_0
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 113
    .local v4, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v4, v0, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 114
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IDS count updated to "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " for "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, p0, Landroid/app/IdsController;->ctx:Landroid/content/Context;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    .end local v2    # "idsCount":I
    .end local v3    # "sp":Landroid/content/SharedPreferences;
    .end local v4    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_1
    goto :goto_1

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Clearing data while writing to SP of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/app/IdsController;->ctx:Landroid/content/Context;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object v1, p0, Landroid/app/IdsController;->ctx:Landroid/content/Context;

    if-eqz v1, :cond_2

    .line 122
    const-string v2, "android.app.ActivityThread.IDS"

    invoke-virtual {v1, v2}, Landroid/content/Context;->deleteSharedPreferences(Ljava/lang/String;)Z

    .line 125
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_1
    return-void
.end method

.method public blacklist doIds()Z
    .locals 6

    .line 136
    invoke-direct {p0}, Landroid/app/IdsController;->getIdsSharedPreference()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 137
    .local v0, "sp":Landroid/content/SharedPreferences;
    const/4 v1, 0x0

    const-string v2, "App "

    const-string v3, "IDS_TAG"

    if-eqz v0, :cond_1

    .line 138
    const-string v4, "IDSCount"

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 139
    .local v4, "idsCount":I
    sget v5, Landroid/app/IdsController;->DO_IDS:I

    if-ne v4, v5, :cond_0

    .line 140
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/IdsController;->ctx:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " being boosted by IDS"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    const/4 v1, 0x1

    return v1

    .line 142
    :cond_0
    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    .line 143
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Landroid/app/IdsController;->ctx:Landroid/content/Context;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " in NO_IDS list"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    return v1

    .line 147
    .end local v4    # "idsCount":I
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Landroid/app/IdsController;->ctx:Landroid/content/Context;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " has not finished training"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    return v1
.end method

.method blacklist openIdsWindow(Landroid/view/View;Landroid/view/Choreographer;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "mChoreographer"    # Landroid/view/Choreographer;

    .line 78
    sget-boolean v0, Landroid/app/IdsController;->clearData:Z

    const-string v1, "IDS_TAG"

    if-eqz v0, :cond_0

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Clearing training data of "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/app/IdsController;->ctx:Landroid/content/Context;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object v0, p0, Landroid/app/IdsController;->ctx:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 81
    const-string v2, "android.app.ActivityThread.IDS"

    invoke-virtual {v0, v2}, Landroid/content/Context;->deleteSharedPreferences(Ljava/lang/String;)Z

    .line 84
    :cond_0
    const-string v0, "Starting IDS observe window"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-direct {p0, p1, p2}, Landroid/app/IdsController;->registerLayoutListener(Landroid/view/View;Landroid/view/Choreographer;)V

    .line 86
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/app/IdsController;->setIdsWindowActive(Z)V

    .line 87
    return-void
.end method

.method public blacklist uiUpdated(I)V
    .locals 2
    .param p1, "reason"    # I

    .line 199
    invoke-direct {p0}, Landroid/app/IdsController;->isIdsWindowActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1}, Landroid/app/IdsController;->getReasonForUpdate(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " updated UI for IDS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IDS_TAG"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object v0, p0, Landroid/app/IdsController;->hasUiUpdated:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 203
    :cond_0
    return-void
.end method
