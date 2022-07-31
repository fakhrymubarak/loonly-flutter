class Movie {
  final int id;
  final String title;
  final String description;
  final String imageUrl;
  final String backdropUrl;
  final String yearPublished;
  final double voteAverage;
  final int voteCount;

  const Movie(
      {required this.id,
      required this.title,
      required this.description,
      required this.imageUrl,
      required this.backdropUrl,
      required this.yearPublished,
      required this.voteAverage,
      required this.voteCount});
}

const listMovie = [
  Movie(
      id: 616037,
      title: "Thor: Love and Thunder",
      description:
          "After his retirement is interrupted by Gorr the God Butcher, a galactic killer who seeks the extinction of the gods, Thor enlists the help of King Valkyrie, Korg, and ex-girlfriend Jane Foster, who now inexplicably wields Mjolnir as the Mighty Thor. Together they embark upon a harrowing cosmic adventure to uncover the mystery of the God Butcher’s vengeance and stop him before it’s too late.",
      imageUrl: "/pIkRyD18kl4FhoCNQuWxWu5cBLM.jpg",
      backdropUrl: "/p1F51Lvj3sMopG948F5HsBbl43C.jpg",
      yearPublished: "2022-07-06",
      voteAverage: 6.7,
      voteCount: 1377),
  Movie(
      id: 507086,
      title: "Jurassic World Dominion",
      description:
          "Four years after Isla Nublar was destroyed, dinosaurs now live—and hunt—alongside humans all over the world. This fragile balance will reshape the future and determine, once and for all, whether human beings are to remain the apex predators on a planet they now share with history’s most fearsome creatures.",
      imageUrl: "/kAVRgw7GgK1CfYEJq8ME6EvRIgU.jpg",
      backdropUrl: "/698FjyzLdpgXmUSr63LaRwblTmx.jpg",
      yearPublished: "2022-06-01",
      voteAverage: 7.1,
      voteCount: 2151),
  Movie(
      id: 438148,
      title: "Minions: The Rise of Gru",
      description:
          "A fanboy of a supervillain supergroup known as the Vicious 6, Gru hatches a plan to become evil enough to join them, with the backup of his followers, the Minions.",
      imageUrl: "/wKiOkZTN9lUUUNZLmtnwubZYONg.jpg",
      backdropUrl: "/qTkJ6kbTeSjqfHCFCmWnfWZJOtm.jpg",
      yearPublished: "2022-06-29",
      voteAverage: 7.5,
      voteCount: 511),
  Movie(
      id: 361743,
      title: "Top Gun: Maverick",
      description:
          "After more than thirty years of service as one of the Navy’s top aviators, and dodging the advancement in rank that would ground him, Pete “Maverick” Mitchell finds himself training a detachment of TOP GUN graduates for a specialized mission the likes of which no living pilot has ever seen.",
      imageUrl: "/62HCnUTziyWcpDaBO2i1DX17ljH.jpg",
      backdropUrl: "/odJ4hx6g6vBt4lBWKFD1tI8WS4x.jpg",
      yearPublished: "2022-05-24",
      voteAverage: 8.3,
      voteCount: 1714),
  Movie(
      id: 718789,
      title: "Lightyear",
      description:
          "Legendary Space Ranger Buzz Lightyear embarks on an intergalactic adventure alongside a group of ambitious recruits and his robot companion Sox.",
      imageUrl: "/ox4goZd956BxqJH6iLwhWPL9ct4.jpg",
      backdropUrl: "/nW5fUbldp1DYf2uQ3zJTUdachOu.jpg",
      yearPublished: "2022-06-15",
      voteAverage: 7.3,
      voteCount: 1051),
  Movie(
      id: 756999,
      title: "The Black Phone",
      description:
          "Finney Shaw, a shy but clever 13-year-old boy, is abducted by a sadistic killer and trapped in a soundproof basement where screaming is of little use. When a disconnected phone on the wall begins to ring, Finney discovers that he can hear the voices of the killer’s previous victims. And they are dead set on making sure that what happened to them doesn’t happen to Finney.",
      imageUrl: "/p9ZUzCyy9wRTDuuQexkQ78R2BgF.jpg",
      backdropUrl: "/AfvIjhDu9p64jKcmohS4hsPG95Q.jpg",
      yearPublished: "2022-06-22",
      voteAverage: 8,
      voteCount: 1207),
  Movie(
      id: 453395,
      title: "Doctor Strange in the Multiverse of Madness",
      description:
          "Doctor Strange, with the help of mystical allies both old and new, traverses the mind-bending and dangerous alternate realities of the Multiverse to confront a mysterious new adversary.",
      imageUrl: "/9Gtg2DzBhmYamXBS1hKAhiwbBKS.jpg",
      backdropUrl: "/wcKFYIiVDvRURrzglV9kGu7fpfY.jpg",
      yearPublished: "2022-05-04",
      voteAverage: 7.5,
      voteCount: 4846),
  Movie(
      id: 919355,
      title: "Dragon Knight",
      description:
          "Many years after the war has been lost, and all the dragons slain, a lone knight travels the lands of Agonos seeking to raise an army against the demon lord Abaddon. When a healer's vision reveals that one dragon still lives, and together with an eager young squire, the knight sets off in search of the fabled creature. As the armies of Abaddon descend on the human kingdoms, the dragon is their last hope of fending off the horde, before it lays waste to the lands of men. But does the creature even exist? And if it does, will it fight for them once more?",
      imageUrl: "/uSMJbYhaEpQtF9vkMhpgljc0CA4.jpg",
      backdropUrl: "/lkZjWIuwJQohA1zjIlMaqK2QpWA.jpg",
      yearPublished: "2022-03-21",
      voteAverage: 4.9,
      voteCount: 5),
  Movie(
      id: 759175,
      title: "The Princess",
      description:
          "A beautiful, strong-willed young royal refuses to wed the cruel sociopath to whom she is betrothed and is kidnapped and locked in a remote tower of her father’s castle. With her scorned, vindictive suitor intent on taking her father’s throne, the princess must protect her family and save the kingdom.",
      imageUrl: "/9pCoqX24a6rE981fY1O3PmhiwrB.jpg",
      backdropUrl: "/5PnypKiSj2efSPqThNjTXz8jwOg.jpg",
      yearPublished: "2022-06-16",
      voteAverage: 7.1,
      voteCount: 293),
  Movie(
      id: 924482,
      title: "The Ledge",
      description:
          "A rock climbing adventure between two friends turns into a terrifying nightmare. After Kelly captures the murder of her best friend on camera, she becomes the next target of a tight-knit group of friends who will stop at nothing to destroy the evidence and anyone in their way. Desperate for her safety, she begins a treacherous climb up a mountain cliff and her survival instincts are put to the test when she becomes trapped with the killers just 20 feet away.",
      imageUrl: "/mKFT6Q7PjrRLYuPLfmH4WLCXOiD.jpg",
      backdropUrl: "/jazlkwXfw4KdF6fVTRsolOvRCmu.jpg",
      yearPublished: "2022-02-18",
      voteAverage: 6.2,
      voteCount: 69),
  Movie(
      id: 961484,
      title: "Last Seen Alive",
      description:
          "After Will Spann's wife suddenly vanishes at a gas station, his desperate search to find her leads him down a dark path that forces him to run from authorities and take the law into his own hands.",
      imageUrl: "/qvqyDj34Uivokf4qIvK4bH0m0qF.jpg",
      backdropUrl: "/3EaCqZdbY2uAMhhw9rQwmHjYC0Y.jpg",
      yearPublished: "2022-05-19",
      voteAverage: 6.5,
      voteCount: 159),
  Movie(
      id: 836225,
      title: "The Exorcism of God",
      description:
          "An American priest working in Mexico is considered a saint by many local parishioners. However, due to a botched exorcism, he carries a secret that’s eating him alive until he gets an opportunity to face his demon one final time.",
      imageUrl: "/hangTmbxpSV4gpHG7MgSlCWSSFa.jpg",
      backdropUrl: "/b1L7qevxiVpkVFq4dmdQPGFPWH0.jpg",
      yearPublished: "2022-03-11",
      voteAverage: 7.1,
      voteCount: 384),
  Movie(
      id: 634649,
      title: "Spider-Man: No Way Home",
      description:
          "Peter Parker is unmasked and no longer able to separate his normal life from the high-stakes of being a super-hero. When he asks for help from Doctor Strange the stakes become even more dangerous, forcing him to discover what it truly means to be Spider-Man.",
      imageUrl: "/1g0dhYtq4irTY1GPXvft6k4YLjm.jpg",
      backdropUrl: "/ocUp7DJBIc8VJgLEw1prcyK1dYv.jpg",
      yearPublished: "2021-12-15",
      voteAverage: 8.1,
      voteCount: 14355),
  Movie(
      id: 613093,
      title: "Valley of the Dead",
      description:
          "They're soldiers on different sides of the war. But when the dead come back to life, the only side they want to be on is the one that survives.",
      imageUrl: "/avokvOwhjVR9GgISsSSgb2A343G.jpg",
      backdropUrl: "/h6XfgbzQEV4sitsIVY63pawLI0s.jpg",
      yearPublished: "2022-03-11",
      voteAverage: 6.2,
      voteCount: 115),
  Movie(
      id: 629015,
      title: "Shut In",
      description:
          "A young single mother is held captive along with her two children by a violent ex and must plot their escape before it’s too late.",
      imageUrl: "/b5ug4LyLQFeR6azAJyIPBQz5ur9.jpg",
      backdropUrl: "/zTffxrYeeKfDMuaIeabDjKTaSuX.jpg",
      yearPublished: "2022-03-24",
      voteAverage: 7.1,
      voteCount: 122),
  Movie(
      id: 894169,
      title: "Vendetta",
      description:
          "When his daughter is murdered, William Duncan takes the law into his own hands, setting out on a quest for retribution. After killing the street thug responsible for her death, he finds himself in the middle of a war with the thug's brother, father, and their gang, who are equally hell-bent on getting even. What ensues is a tense back-and-forth game of vengeance. By the end, William comes to find that the quest for revenge never has a winner.",
      imageUrl: "/7InGE2Sux0o9WGbbn0bl7nZzqEc.jpg",
      backdropUrl: "/33qGtN2GpGEb94pn25PDPeWQZLk.jpg",
      yearPublished: "2022-05-17",
      voteAverage: 6.6,
      voteCount: 101),
  Movie(
      id: 864370,
      title: "Incantation",
      description:
          "Inspired by a true story of a family who believed they were possessed by spirits, this film follows a woman who must protect her child from a curse.  WARNING: This is a cursed video, it might contain certain risks to watch ; For those who dares to follow, please solve the puzzle of my daughter's curse with me .",
      imageUrl: "/6zltP23zLGPogsHZUazSrrwNuKs.jpg",
      backdropUrl: "/6d1mHKcozT5AaZeI76ehJrBt0hr.jpg",
      yearPublished: "2022-03-18",
      voteAverage: 7.4,
      voteCount: 152),
  Movie(
      id: 626735,
      title: "Dog",
      description:
          "An army ranger and his dog embark on a road trip along the Pacific Coast Highway to attend a friend's funeral.",
      imageUrl: "/rkpLvPDe0ZE62buUS32exdNr7zD.jpg",
      backdropUrl: "/t0mwKhUDa62hdhdKSsN4xMfhY5Z.jpg",
      yearPublished: "2022-02-17",
      voteAverage: 7.4,
      voteCount: 690),
  Movie(
      id: 888195,
      title: "Hot Seat",
      description:
          "An ex-hacker is forced to break into high-level banking institutions, another man must try to penetrate the booby-trapped building to get the young man off the hot seat.",
      imageUrl: "/TUmSO5EPIZAfRSOEjmbrgbTw8i.jpg",
      backdropUrl: "/g3pG27i0v6eKWDKLf4GQsKZxmZX.jpg",
      yearPublished: "2022-07-01",
      voteAverage: 6.8,
      voteCount: 26),
  Movie(
      id: 675353,
      title: "Sonic the Hedgehog 2",
      description:
          "After settling in Green Hills, Sonic is eager to prove he has what it takes to be a true hero. His test comes when Dr. Robotnik returns, this time with a new partner, Knuckles, in search for an emerald that has the power to destroy civilizations. Sonic teams up with his own sidekick, Tails, and together they embark on a globe-trotting journey to find the emerald before it falls into the wrong hands.",
      imageUrl: "/6DrHO1jr3qVrViUO6s6kFiAGM7.jpg",
      backdropUrl: "/egoyMDLqCxzjnSrWOz50uLlJWmD.jpg",
      yearPublished: "2022-03-30",
      voteAverage: 7.7,
      voteCount: 2605),
];
