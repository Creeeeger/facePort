.class public abstract Landroidx/profileinstaller/ProfileVerifier;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"


# static fields
.field public static final SYNC_OBJ:Ljava/lang/Object;

.field public static sCompilationStatus:Landroidx/profileinstaller/ProfileVerifier$CompilationStatus;

.field public static final sFuture:Landroidx/concurrent/futures/ResolvableFuture;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/concurrent/futures/ResolvableFuture;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/profileinstaller/ProfileVerifier;->sFuture:Landroidx/concurrent/futures/ResolvableFuture;

    .line 7
    .line 8
    new-instance v0, Ljava/lang/Object;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Landroidx/profileinstaller/ProfileVerifier;->SYNC_OBJ:Ljava/lang/Object;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    sput-object v0, Landroidx/profileinstaller/ProfileVerifier;->sCompilationStatus:Landroidx/profileinstaller/ProfileVerifier$CompilationStatus;

    .line 17
    .line 18
    return-void
.end method

.method public static setCompilationStatus()Landroidx/profileinstaller/ProfileVerifier$CompilationStatus;
    .locals 4

    .line 1
    new-instance v0, Landroidx/profileinstaller/ProfileVerifier$CompilationStatus;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/profileinstaller/ProfileVerifier;->sCompilationStatus:Landroidx/profileinstaller/ProfileVerifier$CompilationStatus;

    .line 7
    .line 8
    sget-object v1, Landroidx/profileinstaller/ProfileVerifier;->sFuture:Landroidx/concurrent/futures/ResolvableFuture;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    sget-object v2, Landroidx/concurrent/futures/AbstractResolvableFuture;->ATOMIC_HELPER:Landroidx/concurrent/futures/AbstractResolvableFuture$AtomicHelper;

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    invoke-virtual {v2, v1, v3, v0}, Landroidx/concurrent/futures/AbstractResolvableFuture$AtomicHelper;->casValue(Landroidx/concurrent/futures/AbstractResolvableFuture;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-static {v1}, Landroidx/concurrent/futures/AbstractResolvableFuture;->complete(Landroidx/concurrent/futures/AbstractResolvableFuture;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    sget-object v0, Landroidx/profileinstaller/ProfileVerifier;->sCompilationStatus:Landroidx/profileinstaller/ProfileVerifier$CompilationStatus;

    .line 26
    .line 27
    return-object v0
.end method

.method public static writeProfileVerification(Landroid/content/Context;)V
    .locals 18

    .line 1
    sget-object v0, Landroidx/profileinstaller/ProfileVerifier;->sCompilationStatus:Landroidx/profileinstaller/ProfileVerifier$CompilationStatus;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    sget-object v1, Landroidx/profileinstaller/ProfileVerifier;->SYNC_OBJ:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v1

    .line 9
    :try_start_0
    sget-object v0, Landroidx/profileinstaller/ProfileVerifier;->sCompilationStatus:Landroidx/profileinstaller/ProfileVerifier$CompilationStatus;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    monitor-exit v1

    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception v0

    .line 16
    goto/16 :goto_6

    .line 17
    .line 18
    :cond_1
    new-instance v0, Ljava/io/File;

    .line 19
    .line 20
    new-instance v2, Ljava/io/File;

    .line 21
    .line 22
    const-string v3, "/data/misc/profiles/ref/"

    .line 23
    .line 24
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const-string v3, "primary.prof"

    .line 32
    .line 33
    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/io/File;->length()J

    .line 37
    .line 38
    .line 39
    move-result-wide v2

    .line 40
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    const/4 v4, 0x0

    .line 45
    const-wide/16 v5, 0x0

    .line 46
    .line 47
    const/4 v7, 0x1

    .line 48
    if-eqz v0, :cond_2

    .line 49
    .line 50
    cmp-long v0, v2, v5

    .line 51
    .line 52
    if-lez v0, :cond_2

    .line 53
    .line 54
    move v0, v7

    .line 55
    goto :goto_0

    .line 56
    :cond_2
    move v0, v4

    .line 57
    :goto_0
    new-instance v8, Ljava/io/File;

    .line 58
    .line 59
    new-instance v9, Ljava/io/File;

    .line 60
    .line 61
    const-string v10, "/data/misc/profiles/cur/0/"

    .line 62
    .line 63
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v11

    .line 67
    invoke-direct {v9, v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    const-string v10, "primary.prof"

    .line 71
    .line 72
    invoke-direct {v8, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v8}, Ljava/io/File;->length()J

    .line 76
    .line 77
    .line 78
    move-result-wide v16

    .line 79
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    .line 80
    .line 81
    .line 82
    move-result v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    if-eqz v8, :cond_3

    .line 84
    .line 85
    cmp-long v8, v16, v5

    .line 86
    .line 87
    if-lez v8, :cond_3

    .line 88
    .line 89
    move v8, v7

    .line 90
    goto :goto_1

    .line 91
    :cond_3
    move v8, v4

    .line 92
    :goto_1
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 93
    .line 94
    .line 95
    move-result-object v9

    .line 96
    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 97
    .line 98
    .line 99
    move-result-object v9

    .line 100
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v10

    .line 104
    invoke-static {v5, v6}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    .line 105
    .line 106
    .line 107
    move-result-object v5

    .line 108
    invoke-virtual {v9, v10, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)Landroid/content/pm/PackageInfo;

    .line 109
    .line 110
    .line 111
    move-result-object v5

    .line 112
    iget-wide v14, v5, Landroid/content/pm/PackageInfo;->lastUpdateTime:J
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 113
    .line 114
    :try_start_2
    new-instance v5, Ljava/io/File;

    .line 115
    .line 116
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 117
    .line 118
    .line 119
    move-result-object v6

    .line 120
    const-string v9, "profileInstalled"

    .line 121
    .line 122
    invoke-direct {v5, v6, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    .line 126
    .line 127
    .line 128
    move-result v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 129
    if-eqz v6, :cond_4

    .line 130
    .line 131
    :try_start_3
    invoke-static {v5}, Landroidx/profileinstaller/ProfileVerifier$Cache;->readFromFile(Ljava/io/File;)Landroidx/profileinstaller/ProfileVerifier$Cache;

    .line 132
    .line 133
    .line 134
    move-result-object v6
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 135
    goto :goto_2

    .line 136
    :catch_0
    :try_start_4
    invoke-static {}, Landroidx/profileinstaller/ProfileVerifier;->setCompilationStatus()Landroidx/profileinstaller/ProfileVerifier$CompilationStatus;

    .line 137
    .line 138
    .line 139
    monitor-exit v1

    .line 140
    return-void

    .line 141
    :cond_4
    const/4 v6, 0x0

    .line 142
    :goto_2
    const/4 v9, 0x2

    .line 143
    if-eqz v6, :cond_6

    .line 144
    .line 145
    iget-wide v10, v6, Landroidx/profileinstaller/ProfileVerifier$Cache;->mPackageLastUpdateTime:J

    .line 146
    .line 147
    cmp-long v10, v10, v14

    .line 148
    .line 149
    if-nez v10, :cond_6

    .line 150
    .line 151
    iget v10, v6, Landroidx/profileinstaller/ProfileVerifier$Cache;->mResultCode:I

    .line 152
    .line 153
    if-ne v10, v9, :cond_5

    .line 154
    .line 155
    goto :goto_3

    .line 156
    :cond_5
    move v4, v10

    .line 157
    goto :goto_4

    .line 158
    :cond_6
    :goto_3
    if-eqz v0, :cond_7

    .line 159
    .line 160
    move v4, v7

    .line 161
    goto :goto_4

    .line 162
    :cond_7
    if-eqz v8, :cond_8

    .line 163
    .line 164
    move v4, v9

    .line 165
    :cond_8
    :goto_4
    if-eqz v6, :cond_9

    .line 166
    .line 167
    iget v0, v6, Landroidx/profileinstaller/ProfileVerifier$Cache;->mResultCode:I

    .line 168
    .line 169
    if-ne v0, v9, :cond_9

    .line 170
    .line 171
    if-ne v4, v7, :cond_9

    .line 172
    .line 173
    iget-wide v7, v6, Landroidx/profileinstaller/ProfileVerifier$Cache;->mInstalledCurrentProfileSize:J

    .line 174
    .line 175
    cmp-long v0, v2, v7

    .line 176
    .line 177
    if-gez v0, :cond_9

    .line 178
    .line 179
    const/4 v0, 0x3

    .line 180
    move v13, v0

    .line 181
    goto :goto_5

    .line 182
    :cond_9
    move v13, v4

    .line 183
    :goto_5
    new-instance v0, Landroidx/profileinstaller/ProfileVerifier$Cache;

    .line 184
    .line 185
    const/4 v12, 0x1

    .line 186
    move-object v11, v0

    .line 187
    invoke-direct/range {v11 .. v17}, Landroidx/profileinstaller/ProfileVerifier$Cache;-><init>(IIJJ)V

    .line 188
    .line 189
    .line 190
    if-eqz v6, :cond_a

    .line 191
    .line 192
    invoke-virtual {v6, v0}, Landroidx/profileinstaller/ProfileVerifier$Cache;->equals(Ljava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    move-result v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 196
    if-nez v2, :cond_b

    .line 197
    .line 198
    :cond_a
    :try_start_5
    invoke-virtual {v0, v5}, Landroidx/profileinstaller/ProfileVerifier$Cache;->writeOnFile(Ljava/io/File;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 199
    .line 200
    .line 201
    :catch_1
    :cond_b
    :try_start_6
    invoke-static {}, Landroidx/profileinstaller/ProfileVerifier;->setCompilationStatus()Landroidx/profileinstaller/ProfileVerifier$CompilationStatus;

    .line 202
    .line 203
    .line 204
    monitor-exit v1

    .line 205
    return-void

    .line 206
    :catch_2
    invoke-static {}, Landroidx/profileinstaller/ProfileVerifier;->setCompilationStatus()Landroidx/profileinstaller/ProfileVerifier$CompilationStatus;

    .line 207
    .line 208
    .line 209
    monitor-exit v1

    .line 210
    return-void

    .line 211
    :goto_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 212
    throw v0
.end method
